# lab5实验报告
本lab代码量较大, 此处仅写思路, 具体代码逻辑请见提交的代码

> 练习题 1：实现位于`userland/servers/tmpfs/tmpfs.c`的`tfs_mknod`和`tfs_namex`。
`tfs_mknod`代码如下,
 - 首先按照`mkdir`创建普通文件或目录
 - 之后创建dir entry并将其加入父目录的hash表中, 并对父文件目录的`size`加1
````c
inode = mkdir ? new_dir(): new_reg();
dent = new_dent(inode, name, len);
htable_add(&(dir->dentries), (u32)(dent->name.hash), &dent->node);
dir->size++;
````
`tfs_namex`代码如下:
 - 使用`find`表示字符串中`name`后找到的第一个`/`
 - 循环中, 首先将`find`移动到字符串中`name`后找到的第一个`/`处
 - 如果`find == '\0'`表示已经移动到`name`末尾, 直接正常返回
 - 否则将`name`和`find`之间表示文件/目录名的字符拷贝到`buff`中并添加字符串结束符
 - 使用`tfs_lookup`查找父目录下文件是否创建
 - 如果没有创建, 则根据`mkdir_p`的设置决定是否创建, 若`mkdir_p == 0`则直接返回`-ENOENT`; 否则使用`tfs_mkdir`创建并使用`tfs_lookup`获取非空`dent`
 - 如果已经创建则将`dirat`设置为该文件的inode, `name`设置为下级文件名的起始, 进入下一轮循环
````c
char* find;
int len;
while(1){
	find = *name;
	while(*find != '/' && *find !='\0')find++;
	if(*find == '\0') return 0;
	len = find - *name;
	memcpy(buff, *name, len);
	buff[len] = '\0';
	dent = tfs_lookup(*dirat, buff, len);
	if(!dent){
		if(!mkdir_p) return -ENOENT;
			tfs_mkdir(*dirat, buff, len);
			dent = tfs_lookup(*dirat, buff, len);
		}
	*dirat = dent->inode;
	*name = find + 1;
	}
````

> 练习题 2：实现位于`userland/servers/tmpfs/tmpfs.c`的`tfs_file_read`和`tfs_file_write`。提示：由于数据块的大小为PAGE_SIZE，因此读写可能会牵涉到多个页面。读取不能超过文件大小，而写入可能会增加文件大小（也可能需要创建新的数据块）。
`tfs_file_read`代码如下:
 - 首先获取`page_no`和`page_off`, `to_read = MIN(PAGE_SIZE - page_off/*to page end*/, size)`需要读取的字节数为读取到page末尾和读取到size末尾需要读取的最少字节数
 - 使用`radix_get`获取page, 如果page不存在则将`buf`中`to_read`部分置为0, 否则使用`memcpy`从page中读取`to_read`字节到`buf`
 - 调整`size`、`cur_off`和`buff`, 进入下一轮循环
````c
while (size > 0 && cur_off <= inode->size){
	page_no = cur_off / PAGE_SIZE;
	page_off = cur_off % PAGE_SIZE;
	page = radix_get(&inode->data, page_no);
	to_read = MIN(PAGE_SIZE - page_off/*to page end*/, size);
	if(!page)
		memset(buff, 0, to_read);
	else
		memcpy(buff, page + page_off, to_read);
	size -= to_read;
	cur_off += to_read;
	buff += to_read;
}
````
`tfs_file_write`代码如下:
 - 首先获取`page_no`和`page_off`, `to_write = MIN(PAGE_SIZE - page_off/*to page end*/, size)`需要读取的字节数为读取到page末尾和读取到size末尾需要读取的最少字节数
 - 使用`radix_get`获取page, 如果page不存在则使用`malloc`和`radix_add`创建page并加入到文件radix tree中
 - 使用`memcpy`从buf中获取对应偏移处`to_write`数量的字符写入page
 - 调整`size`、`cur_off`和`buf_offset`, 进入下一轮循环
 - 设置`inode->size`为文件原大小和写入后相对文件头偏移量的最大值(`inode->size = MAX(inode->size, cur_off)`)
````c
u64 buf_offset = 0;
while (size > 0){
	page_no = cur_off / PAGE_SIZE;
	page_off = cur_off % PAGE_SIZE;
	page = radix_get(&inode->data, page_no);
	if(!page){
		page = malloc(PAGE_SIZE);
		radix_add(&inode->data, page_no, page);
	}
	to_write = MIN(PAGE_SIZE - page_off/*to page end*/, size);
	memcpy(page + page_off, data + buf_offset, to_write);
	size -= to_write;
	cur_off += to_write;
	buf_offset += to_write;
}
inode->size = MAX(inode->size, cur_off);
````

> 练习题 3：实现位于`userland/servers/tmpfs/tmpfs.c`的`tfs_load_image`函数。需要通过之前实现的tmpfs函数进行目录和文件的创建，以及数据的读写。
`tfs_load_image`中的循环如下,
 - 首先使用首先使用`tfs_namex`(`mkdir_p = 1`)获取最底层目录名, 将`dirat`设置到最底层文件名的上级目录并创建未创建的中间目录
 - 之后使用`tfs_lookup`查找最底层文件是否已经创建, 如果已经创建则进入下一轮循环, 否则使用`tfs_creat`创建之并使用`tfs_lookup`获取其`dent`
 - 之后使用`tfs_file_write`将数据写入`dent`表示的文件
````c
for (f = g_files.head.next; f; f = f->next) {
	leaf = f->name;
	dirat = tmpfs_root_dent->inode;
	tfs_namex(&dirat, &leaf, 1);
	len = strlen(leaf);
	dent = tfs_lookup(dirat, leaf, len);
	if(dent)continue;
	tfs_creat(dirat, leaf, len);
	dent = tfs_lookup(dirat, leaf, len);
	tfs_file_write(dent->inode, 0, f->data, f->header.c_filesize);
}
````

> 练习题 4：利用`userland/servers/tmpfs/tmpfs.c`中已经实现的函数，完成在`userland/servers/tmpfs/tmpfs_ops.c`中的`fs_creat`、`tmpfs_unlink`和`tmpfs_mkdir`函数，从而使`tmpfs_*`函数可以被`fs_server_dispatch`调用以提供系统服务。对应关系可以参照`userland/servers/tmpfs/tmpfs_ops.c`中`server_ops`的设置以及`userland/fs_base/fs_wrapper.c`的`fs_server_dispatch`函数。在本实验中只需考虑如下几个文件操作函数：
 - `fs_creat`首先使用`tfs_namex`(`mkdir_p = 1`)获取最底层文件名, 将`dirat`设置到最底层文件名的上级目录并创建未创建的中间目录; 如果此时文件路径已经结束(表示创建的是目录, 目录创建已经在`tfs_namex`中完成)则返回, 否则使用`tfs_creat`创建文件并返回
````c
tfs_namex(&dirat, &leaf, 1);
if(*leaf == '\0')return 0;
tfs_creat(dirat, leaf, strlen(leaf));
````
 - `tmpfs_unlink`首先使用`tfs_namex`(`mkdir_p = 0`)获取最底层文件名, 将`dirat`设置到最底层文件名的上级目录并创建未创建的中间目录, 之后使用`tfs_remove`将文件删除
````c
err = tfs_namex(&dirat, &leaf, 0);
if(!err)
err = tfs_remove(dirat, leaf, strlen(leaf));
````
 - `tmpfs_mkdir`首先使用`tfs_namex`(`mkdir_p = 1`)获取最底层目录名, 将`dirat`设置到最底层文件名的上级目录并创建未创建的中间目录, 之后使用`tfs_mkdir`创建最底层目录(最底层目录后如果加`/`则在`tfs_namex`中已经被创建)
````c
err = tfs_namex(&dirat, &leaf, 1);
if(!err)
err = tfs_mkdir(dirat, leaf, strlen(leaf));
````

> 练习题 5：实现在`userland/servers/shell/main.c`中定义的`getch`，该函数会每次从标准输入中获取字符，并实现在`userland/servers/shell/shell.c`中的`readline`，该函数会将按下回车键之前的输入内容存入内存缓冲区。代码中可以使用在`libchcore/include/libc/stdio.h`中的定义的I/O函数。
 - `getch`直接调用`c = chcore_console_getc()`从标准输入获取一个字符并返回即可
 - `readline`中`while`循环代码如下, 每次调用`getch`获取一个字符输入, 
   - 如果是`\t`则进入complement流程: 使用`complement_time`记录连续获取complement的次数, 在第一次读取到`\t`时将其设为0并进入complement循环, 每次调用`do_complement`函数获取下一条文件名结果, 若已经输出完毕(`ret = -1`), 则将`complement_time`置为0后重新进入下一轮循环, 为避免在空目录下进行complement造成的死循环, 我们在空目录下直接`break`; 获取文件名结果后, 我们使用`chcore_console_printf("\b \b")`循环将之前的输出清空(可能是上次complement输出的文件名, 也可能是输入`\t`之前的其他输入)并使用`chcore_console_printf`输出文件名并对`complement_time`加一, 循环被非`\t`输入打断, 如果打断所用的输入时`\n`或`\r`代表此行输入结束, 此时换行并返回输入结果
   - 如果输入`\n`或`\r`代表此行输入结束, 使用`chcore_console_printf('\r\n')`退格后换行, 并返回输入结果
   - 对于其他输入, 将其追加在buf中并使用`chcore_console_putc`打印在屏幕上
````c
while (1) {
    	__chcore_sys_yield();
		c = getch();
	if(c == '\t'){
		complement_time = 0;
		do{
			ret = do_complement(buf, complement, complement_time);
			if(ret == -1){
				if(complement_time == 0)
					break;
				complement_time = 0;
				continue;
			}
			for(j = 0; j < i; j++)
				chcore_console_printf("\b \b");
			chcore_console_printf("%s", complement);
			i = strlen(complement);
			complement_time ++;
			
			c = getch();
		}while(c == '\t');
		if(c == '\n' || c == '\r'){
			chcore_console_printf('\r\n');
			buf[i] = '\0';
			return buf;
		}
	}
	else if(c == '\n' || c == '\r'){
		chcore_console_printf('\r\n');
		buf[i] = '\0';
		return buf;
	}else{
		buf[i] = c;
		i++;
		chcore_console_putc(c);
	}
}
````
 - `do_complement`逻辑为:
   - 首先向`/`文件发送`OPEN`IPC
   - 之后调用`ret = getdents(fd, scan_buf, BUFLEN)`获取`\`下所有dir entry
   - 将顺序处于`complement_time`的entry通过`get_dent_name`获取名字并返回, 但是跳过`.`条目, 代码如下:
````c
for (offset = 0; offset < ret; offset += p->d_reclen, j++) {
	p = (struct dirent *)(scan_buf + offset);
	get_dent_name(p, name);
	if(name[0] == '.'){
			complement_time++;
			continue;
	}
	if(j == complement_time){
		strcpy(complement, name);
		return 0;
	}
}
````
> 练习题 6：根据在`userland/servers/shell/shell.c`中实现好的`builtin_cmd`函数，完成shell中内置命令对应的`do_*`函数，需要支持的命令包括：`ls [dir]`、`echo [string]`、`cat [filename]`和`top`。
 - `do_ls`中用到的`fs_scan`函数首先向`fs_ipc_struct_for_shell`发送`OPEN`IPC打开`path`对应的文件; 之后调用`getdents`函数获取全部dir entry, 之后将其以空格分隔采用`getdents_demo`中的方式遍历并以空格为间隔调用`get_dent_name`输出名字, 跳过`.`, 代码片段如下:
````c
int ret = getdents(fd, scan_buf, BUFLEN);

for (offset = 0; offset < ret; offset += p->d_reclen) {
		p = (struct dirent *)(scan_buf + offset);
		get_dent_name(p, name);
		if(name[0]!='.')
			printf("%s ", name);
}
````
 - `do_echo`直接调用`chcore_console_printf("%s\n", cmdline)`打印`cmdline`即可
 - `do_cat`使用的`print_file_content`首先向`fs_ipc_struct_for_shell`发送`OPEN`IPC call打开文件, 之后发送`READ`IPC(`fread`)完成读取(分对此读取, 每次读取256字节并使用`chcore_console_printf`打印在控制台, 之后发送`CLOSE`IPC关闭文件

> 练习题 7：实现在`userland/servers/shell/shell.c`中定义的`run_cmd`，以通过输入文件名来运行可执行文件，同时补全`do_complement`函数并修改`readline`函数，以支持按tab键自动补全根目录（`/`）下的文件名。
 - `do_complement`函数和`readline`函数见`练习5`
 - `run_cmd`不支持传递参数的版本如下:首先略过全部空格, 之后将`cmdline`中的连续字符(解析为路径名)拷贝进`path`中(如果首字符不为`\`则为其补充`\`), 之后调用chcore_procm_spawn(path, NULL)运行程序
````c
int run_cmd(char *cmdline)
{
	int cap = 0;
	char path[BUFLEN];
	int index = 0;
	while(*cmdline == ' ')cmdline++;
	if(*cmdline != '/')
		path[index++] = '/';
	while (*cmdline != ' ' && *cmdline != '\0')
		path[index++] = *(cmdline++);
	path[index] = '\0';
	chcore_procm_spawn(path, NULL);
	return 0;
}
````

> 练习题 8：补全`userland/apps/lab5`目录下的`lab5_stdio.h`与`lab5_stdio.c`文件，以实现`fopen`, `fwrite`, `fread`, `fclose`, `fscanf`, `fprintf`五个函数，函数用法应与libc中一致，可以参照`lab5_main.c`中测试代码。
 - `FILE`中包含如下字段: fd, 读偏移量和写偏移量
````c
typedef struct FILE {
	u64 fd;
	u64 read_offset;
	u64 write_offset;
} FILE;
````
 - `fopen`的逻辑为: 向`tmpfs_ipc_struct`发送`OPEN`IPC call, 如果`ret < 0`(表示文件不存在), 则向`tmpfs_ipc_struct`发送`CREAT`IPC call, 之后再次发起`OPEN`IPC call, 创建新`FILE`将`fd`设为`file_fd`, `read_offset`和`write_offset`设为0
 - `fwrite`和`fread`相似, 首先向`tmpfs_ipc_struct`发送`SEEK`IPC call, 将其`offset`设置为`f->write_offset`, 之后发送`WRITE`IPC(`fwrite`)和`READ`IPC(`fread`)完成读取和写入操作(如果`size`过大则将其拆分为小于256字节的小段分次进行写入和读取), 之后分别将`f *FILE`的`read_offset`(`fread`)和`read_offset`(`fwrite`)后移对应的长度
 - `fclose`向`tmpfs_ipc_struct`发送`CLOSE`IPC call即可
 - `fprintf`首先将`fmt`和相应的参数转为单个字符串, 之后调用`fwrite`接口写入文件, 转化为字符串的操作如下(与`sprintf`功能相同), 逻辑为逐个检查`fmt`中的字符并拷贝进`buf`, 出现`%d`或`%s`时将对应的`arg`转换为字符串追加在`buf`末尾, `itoa`自行实现在`lab5_stdio`自行添加函数的位置, 逻辑比较简单, 功能与标准库一致
````c
    char buf[8192];
    buf[0] = '\0';
    va_list arg_list;
    va_start(arg_list, fmt);
    char* leaf = fmt;
    int start_fmt = 0;
    while (*leaf!='\0'){
        if(start_fmt == 1){
            start_fmt = 0;
            if(*leaf == 's')
                strcat(buf, (char*)va_arg(arg_list, char*));
            if(*leaf == 'd'){
                char d_buf[8192];
                itoa(d_buf,va_arg(arg_list, int));
                strcat(buf, d_buf);
            }
        }
        else if(*leaf == '%')
            start_fmt = 1;
        else{
            char c_buf[2];
            c_buf[0] = *leaf;
            c_buf[1] = '\0';
            strcat(buf, c_buf);
        }
        leaf++;
    }
	va_end(arg_list);
````
 - `fscanf`首先调用`fread`读取文件的全部内容, 之后对其按照`fmt`进行解析, 代码如下(与`sscanf`功能相同), 逻辑为逐个扫描`fmt`中的字符, 出现`%s`或`%d`时将`buf`中对应的连续字符串转化为数字或字符串拷贝进`arg`表示的地址中, 并在`buf`中略去这些字符, 如果是相同字符(非空格)则`buf`和`fmt`同时向前移动, 如果是空格则不管多少个全部在`buf`和`fmt`中同时略去, 否则视为出错直接返回. `atoi`自行实现在`lab5_stdio`自行添加函数的位置, 逻辑比较简单, 功能与标准库一致, `intercept_string`的逻辑为截取字符串(从字符串头的第一个非空格字符起, 至空格或字符串末尾至)将其拷贝进buf中
````c
    char* tmp_buf = (char*)buf;
    va_list arg_list;
    va_start(arg_list, fmt);
    char* leaf = fmt;
    int start_fmt = 0;
    while (*leaf!='\0'){
        if(start_fmt == 1){
            start_fmt = 0;
            if(*leaf == 's'){
                char* str_dst = va_arg(arg_list, char*);
                char c_buf[8192];
                intercept_string(tmp_buf, c_buf);
                info("cbuf %s\n", c_buf);
                memcpy(str_dst, c_buf, strlen(c_buf)+1);
                while(*tmp_buf!=' ')tmp_buf++;
            }
            if(*leaf == 'd'){
                int* int_dst = va_arg(arg_list, int*);
                atoi(tmp_buf, int_dst);
                while(*tmp_buf!=' ')tmp_buf++;
            }
        }
        else if(*leaf == '%')
            start_fmt = 1;
        else{
            if(*leaf == *tmp_buf)
                tmp_buf++;
            else
                return 0;
        }
        leaf++;
    }
````
> 练习题 9：FSM需要两种不同的文件系统才能体现其特点，本实验提供了一个fakefs用于模拟部分文件系统的接口，测试代码会默认将tmpfs挂载到路径`/`，并将fakefs挂载在到路径`/fakefs`。本练习需要实现`userland/server/fsm/main.c`中空缺的部分，使得用户程序将文件系统请求发送给FSM后，FSM根据访问路径向对应文件系统发起请求，并将结果返回给用户程序。实现过程中可以使用`userland/server/fsm`目录下已经实现的函数。
 - 首先获取对应fs server的`mpinfo`
   - 对于`OPEN`和`CREAT`IPC, 使用`get_mount_point(fr->open.pathname, strlen(fr->open.pathname))`得到`mpinfo`, 之后使用`fsm_set_mount_info_withfd(client_badge, fr->open.new_fd, mpinfo)`将对应关系保存以便其他指令使用(`CREAT`也可以不保存)
   - 对于其他IPC(如`READ`, `WRITW`, `GETDENTS64`), 使用`mpinfo = fsm_get_mount_info_withfd(client_badge, fr->read.fd)`根据fd找到对应的`OPEN`时保存的`mpinfo`
 - 之后创建和`mpinfo->_fs_ipc_struct`通信使用的message, 代码中统一命名为`ipc_msg_redirect`对应的request为`fr_redirect`, 将`fr`中对应的信息拷贝进`fr_redirect`, 之后使用`ret = ipc_call(mpinfo->_fs_ipc_struct, ipc_msg_redirect)`发起IPC
 - 以获取的ret为对`fsm`的IPC的`ret`值, 对于`OPEN`, `CREAT`, `CLOSE`, `WRITE`这类message中不包含data的IPC直接返回即可; 对于`READ`, `GETDENTS64`这类message中包含需要返回的data的IPC, 使用`memcpy(ipc_get_msg_data(ipc_msg), ipc_get_msg_data(ipc_msg_redirect), ret)`将其拷贝入`ipc_msg`之后返回
 - fsm相当于client访问具体fs server的proxy

> 练习题 10：为减少文件操作过程中的IPC次数，可以对FSM的转发机制进行简化。本练习需要完成`libchcore/src/fs/fsm.c`中空缺的部分，使得`fsm_read_file`和`fsm_write_file`函数先利用ID为FS_REQ_GET_FS_CAP的请求通过FSM处理文件路径并获取对应文件系统的 Capability，然后直接对相应文件系统发送文件操作请求。
 - 首先向`fsm_ipc_struct`发送`FS_REQ_GET_FS_CAP`IPC, 可以使用`ipc_get_msg_cap`得到相应的文件系统的cap, 并得到经过`strip_path`处理后的`path`
 - 之后使用得到的cap使用`ipc_register_client`向对应的fs server注册得到`cap_ipc_struct`
 - 向`cap_ipc_struct`发送`FS_REQ_OPEN`IPC和`FS_REQ_READ`IPC(对应`fsm_read_file`)或`FS_REQ_GET_FS_CAP`IPC(对应`fsm_write_file`函数), 完成读文件和写文件, 之后发送`FS_REQ_CLOSE`IPC关闭文件, 使用的`path`均为`FS_REQ_GET_FS_CAP`IPC得到的经过`strip_path`处理后的`path`.