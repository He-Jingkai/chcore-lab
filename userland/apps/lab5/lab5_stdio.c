/*
 * Copyright (c) 2022 Institute of Parallel And Distributed Systems (IPADS)
 * ChCore-Lab is licensed under the Mulan PSL v1.
 * You can use this software according to the terms and conditions of the Mulan PSL v1.
 * You may obtain a copy of Mulan PSL v1 at:
 *     http://license.coscl.org.cn/MulanPSL
 * THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR
 * PURPOSE.
 * See the Mulan PSL v1 for more details.
 */

#include "lab5_stdio.h"


extern struct ipc_struct *tmpfs_ipc_struct;

/* You could add new functions or include headers here.*/
/* LAB 5 TODO BEGIN */
static void connect_tmpfs_server(void)
{
	int tmpfs_cap = __chcore_get_tmpfs_cap();
	chcore_assert(tmpfs_cap >= 0);
	tmpfs_ipc_struct = ipc_register_client(tmpfs_cap);
	chcore_assert(tmpfs_ipc_struct);
}
void itoa(char* buf, int num){
    int order = 0, tmp_num = num;
    char tmp_buf[8192];
    while(tmp_num){
        tmp_buf[order] = '0'+tmp_num%10;
        tmp_num /= 10;
        order++;
    }
    tmp_buf[order] = '\0';
    // info("tmp_buf:%s\n", tmp_buf);
    int total = order-1;
    for(int i =0; i<=total; i++)
        buf[i] = tmp_buf[total-i];
    buf[total+1]='\0';
    // info("convert %d to %s\n", num, buf);
}

void atoi(char* buf, int* num){
    int tmp_num = 0;
    while(*buf == ' ')buf++;
    while(*buf <='9' && *buf >= '0'){
        tmp_num = tmp_num*10 + (*buf) -'0';
        buf++;
    }
    *num = tmp_num;
    info("atoi %d\n", *num);
}

void intercept_string(char* buf, char* dest){
    info("intercept_string buf:%s\n", buf);
    char c_buf[8192];
    int index = 0;
    while(*buf != '\0' && *buf != ' '){
        c_buf[index] = *buf;
        buf++;
        index++;
    }
    c_buf[index] = '\0';
    info("intercept_string %s\n", c_buf);
    memcpy(dest, c_buf, index+1);
}
/* LAB 5 TODO END */


FILE *fopen(const char * filename, const char * mode) {

	/* LAB 5 TODO BEGIN */
	if (!tmpfs_ipc_struct) {
        connect_tmpfs_server();
    }
    int file_fd = 1, ret;
    {
        struct ipc_msg *ipc_msg = ipc_create_msg(tmpfs_ipc_struct, sizeof(struct fs_request), 0);
        chcore_assert(ipc_msg);
        struct fs_request * fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
        fr->req = FS_REQ_OPEN;
        strcpy(fr->open.pathname, filename);
        fr->open.flags = O_RDONLY;
        fr->open.new_fd = file_fd;
        file_fd = ipc_call(tmpfs_ipc_struct, ipc_msg);
        ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
    }
    if(file_fd < 0){
        struct ipc_msg *ipc_msg = ipc_create_msg(
                tmpfs_ipc_struct, sizeof(struct fs_request), 0);
        chcore_assert(ipc_msg);
        struct fs_request * fr =
                (struct fs_request *)ipc_get_msg_data(ipc_msg);
        fr->req = FS_REQ_CREAT;
        strcpy(fr->creat.pathname, filename);
        ipc_call(tmpfs_ipc_struct, ipc_msg);
        ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
    }

    {
        struct ipc_msg *ipc_msg = ipc_create_msg(tmpfs_ipc_struct, sizeof(struct fs_request), 0);
        chcore_assert(ipc_msg);
        struct fs_request * fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
        fr->req = FS_REQ_OPEN;
        strcpy(fr->open.pathname, filename);
        fr->open.flags = O_RDONLY;
        fr->open.new_fd = 1;
        file_fd = ipc_call(tmpfs_ipc_struct, ipc_msg);
        ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
    }
	struct FILE* file = (FILE*)malloc(sizeof(struct FILE));
	file->fd = file_fd;
    file->offset = 0;
	/* LAB 5 TODO END */
    return file;
}

size_t fwrite(const void * src, size_t size, size_t nmemb, FILE * f) {

	/* LAB 5 TODO BEGIN */
    {
        struct ipc_msg *ipc_msg = ipc_create_msg(tmpfs_ipc_struct, sizeof(struct fs_request), 0);
        chcore_assert(ipc_msg);
        struct fs_request * fr =
                (struct fs_request *)ipc_get_msg_data(ipc_msg);
        fr->req = FS_REQ_LSEEK;
        fr->lseek.fd = f->fd;
        fr->lseek.offset = f->offset;
        fr->lseek.whence = SEEK_SET;
        int ret = ipc_call(tmpfs_ipc_struct, ipc_msg);
        ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
    }
    int cnt = nmemb;
    struct ipc_msg *ipc_msg = ipc_create_msg(
                tmpfs_ipc_struct, sizeof(struct fs_request) + cnt + 1, 0);
    chcore_assert(ipc_msg);
    struct fs_request * fr =
            (struct fs_request *)ipc_get_msg_data(ipc_msg);

    fr->req = FS_REQ_WRITE;
    fr->write.fd = f->fd;
    fr->write.count = cnt;
    ipc_set_msg_data(ipc_msg, src, sizeof(struct fs_request), cnt + 1);

    int ret = ipc_call(tmpfs_ipc_struct, ipc_msg);

    ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);

    if(ret < 0) {
        return ret;
    }
    f->offset += nmemb*size;
	/* LAB 5 TODO END */
	
    return ret;
}

size_t fread(void * destv, size_t size, size_t nmemb, FILE * f) {

	/* LAB 5 TODO BEGIN */
    {
        struct ipc_msg *ipc_msg = ipc_create_msg(tmpfs_ipc_struct, sizeof(struct fs_request), 0);
        chcore_assert(ipc_msg);
        struct fs_request * fr =
                (struct fs_request *)ipc_get_msg_data(ipc_msg);
        fr->req = FS_REQ_LSEEK;
        fr->lseek.fd = f->fd;
        fr->lseek.offset = f->offset;
        fr->lseek.whence = SEEK_SET;
        int ret = ipc_call(tmpfs_ipc_struct, ipc_msg);
        ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
    }
    struct ipc_msg *ipc_msg = ipc_create_msg(tmpfs_ipc_struct, sizeof(struct fs_request) + nmemb*size + 2, 0);
    chcore_assert(ipc_msg);
    struct fs_request * fr = (struct fs_request *)ipc_get_msg_data(ipc_msg);
    fr->req = FS_REQ_READ;
    fr->read.fd = f->fd;
    fr->read.count = nmemb*size;
    int ret = ipc_call(tmpfs_ipc_struct, ipc_msg);
    if(ret > 0){
        memcpy(destv, ipc_get_msg_data(ipc_msg), ret);
        f->offset += nmemb * size; 
    }
    ipc_destroy_msg(tmpfs_ipc_struct, ipc_msg);
	/* LAB 5 TODO END */
    return ret;
}

int fclose(FILE *f) {

	/* LAB 5 TODO BEGIN */

	/* LAB 5 TODO END */
    return 0;

}

/* Need to support %s and %d. */
int fscanf(FILE * f, const char * fmt, ...) {

	/* LAB 5 TODO BEGIN */
    char buf[8192];
    int p = 0;
    fread(buf, sizeof(char), 256, f);
    // info("read file:%s", buf);
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
                BUG_ON(1);
        }
        leaf++;
    }

	/* LAB 5 TODO END */
    return 0;
}

/* Need to support %s and %d. */
int fprintf(FILE * f, const char * fmt, ...) {

	/* LAB 5 TODO BEGIN */
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
    // info("%s\n", buf);
    return fwrite(buf, sizeof(char), strlen(buf), f);
	/* LAB 5 TODO END */
    return 0;
}

