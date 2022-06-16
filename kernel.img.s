
kernel/_build/kernel.img:     file format elf64-littleaarch64


Disassembly of section init:

0000000000080000 <_start>:
   80000:	d53800a8 	mrs	x8, mpidr_el1
   80004:	92401d08 	and	x8, x8, #0xff
   80008:	b4000048 	cbz	x8, 80010 <primary>
   8000c:	14000000 	b	8000c <_start+0xc>

0000000000080010 <primary>:
   80010:	94001ffc 	bl	88000 <arm64_elX_to_el1>
   80014:	580000a0 	ldr	x0, 80028 <primary+0x18>
   80018:	91400400 	add	x0, x0, #0x1, lsl #12
   8001c:	9100001f 	mov	sp, x0
   80020:	940020d5 	bl	88374 <init_c>
   80024:	14000000 	b	80024 <primary+0x14>
   80028:	00088b90 	.word	0x00088b90
   8002c:	00000000 	.word	0x00000000
   80030:	14000400 	b	81030 <__start_kernel_veneer+0xff8>
   80034:	d503201f 	nop

0000000000080038 <__start_kernel_veneer>:
   80038:	58000090 	ldr	x16, 80048 <__start_kernel_veneer+0x10>
   8003c:	10000011 	adr	x17, 8003c <__start_kernel_veneer+0x4>
   80040:	8b110210 	add	x16, x16, x17
   80044:	d61f0200 	br	x16
   80048:	0000ffc4 	.word	0x0000ffc4
   8004c:	ffffff00 	.word	0xffffff00
	...
   81030:	00000069 	.word	0x00000069
   81034:	00490003 	.word	0x00490003
   81038:	01040000 	.word	0x01040000
   8103c:	000d0efb 	.word	0x000d0efb
   81040:	01010101 	.word	0x01010101
   81044:	01000000 	.word	0x01000000
   81048:	2f010000 	.word	0x2f010000
   8104c:	736f6863 	.word	0x736f6863
   81050:	72656b2f 	.word	0x72656b2f
   81054:	2f6c656e 	.word	0x2f6c656e
   81058:	68637261 	.word	0x68637261
   8105c:	7261612f 	.word	0x7261612f
   81060:	34366863 	.word	0x34366863
   81064:	6f6f622f 	.word	0x6f6f622f
   81068:	61722f74 	.word	0x61722f74
   8106c:	33697073 	.word	0x33697073
   81070:	696e692f 	.word	0x696e692f
   81074:	73000074 	.word	0x73000074
   81078:	74726174 	.word	0x74726174
   8107c:	0100532e 	.word	0x0100532e
   81080:	00000000 	.word	0x00000000
   81084:	00000209 	.word	0x00000209
   81088:	00000008 	.word	0x00000008
   8108c:	211a0000 	.word	0x211a0000
   81090:	23242321 	.word	0x23242321
   81094:	23222121 	.word	0x23222121
   81098:	01000302 	.word	0x01000302
   8109c:	00002a01 	.word	0x00002a01
   810a0:	cb000200 	.word	0xcb000200
   810a4:	08000810 	.word	0x08000810
   810a8:	08103001 	.word	0x08103001
   810ac:	08000000 	.word	0x08000000
   810b0:	00000000 	.word	0x00000000
   810b4:	08003000 	.word	0x08003000
   810b8:	00000000 	.word	0x00000000
   810bc:	08111000 	.word	0x08111000
   810c0:	08114300 	.word	0x08114300
   810c4:	08115700 	.word	0x08115700
   810c8:	01800100 	.word	0x01800100
   810cc:	06100011 	.word	0x06100011
   810d0:	01120111 	.word	0x01120111
   810d4:	0e1b0e03 	.word	0x0e1b0e03
   810d8:	05130e25 	.word	0x05130e25
   810dc:	00000000 	.word	0x00000000
   810e0:	0000002c 	.word	0x0000002c
   810e4:	109d0002 	.word	0x109d0002
   810e8:	00080008 	.word	0x00080008
   810ec:	00000000 	.word	0x00000000
   810f0:	00080000 	.word	0x00080000
   810f4:	00000000 	.word	0x00000000
   810f8:	00000030 	.word	0x00000030
	...
   81110:	6f68632f 	.word	0x6f68632f
   81114:	656b2f73 	.word	0x656b2f73
   81118:	6c656e72 	.word	0x6c656e72
   8111c:	6372612f 	.word	0x6372612f
   81120:	61612f68 	.word	0x61612f68
   81124:	36686372 	.word	0x36686372
   81128:	6f622f34 	.word	0x6f622f34
   8112c:	722f746f 	.word	0x722f746f
   81130:	69707361 	.word	0x69707361
   81134:	6e692f33 	.word	0x6e692f33
   81138:	732f7469 	.word	0x732f7469
   8113c:	74726174 	.word	0x74726174
   81140:	2f00532e 	.word	0x2f00532e
   81144:	736f6863 	.word	0x736f6863
   81148:	72656b2f 	.word	0x72656b2f
   8114c:	2f6c656e 	.word	0x2f6c656e
   81150:	6975625f 	.word	0x6975625f
   81154:	4700646c 	.word	0x4700646c
   81158:	4120554e 	.word	0x4120554e
   8115c:	2e322053 	.word	0x2e322053
   81160:	00003433 	.word	0x00003433

0000000000081164 <init_boot_pt>:
   81164:	f00000e1 	adrp	x1, a0000 <init_end+0x10000>
   81168:	f9401821 	ldr	x1, [x1, #48]
   8116c:	d2810062 	mov	x2, #0x803                 	// #2051
   81170:	aa020023 	orr	x3, x1, x2
   81174:	f00000e0 	adrp	x0, a0000 <init_end+0x10000>
   81178:	f9403000 	ldr	x0, [x0, #96]
   8117c:	f907f803 	str	x3, [x0, #4080]
   81180:	f00000e0 	adrp	x0, a0000 <init_end+0x10000>
   81184:	f9400400 	ldr	x0, [x0, #8]
   81188:	aa020000 	orr	x0, x0, x2
   8118c:	f9000020 	str	x0, [x1]
   81190:	d2800000 	mov	x0, #0x0                   	// #0
   81194:	12b82001 	mov	w1, #0x3effffff            	// #1056964607
   81198:	eb01001f 	cmp	x0, x1
   8119c:	54000148 	b.hi	811c4 <init_boot_pt+0x60>  // b.pmore
   811a0:	d3557403 	ubfx	x3, x0, #21, #9
   811a4:	d281e022 	mov	x2, #0xf01                 	// #3841
   811a8:	f2e00802 	movk	x2, #0x40, lsl #48
   811ac:	aa020002 	orr	x2, x0, x2
   811b0:	f00000e1 	adrp	x1, a0000 <init_end+0x10000>
   811b4:	f9400421 	ldr	x1, [x1, #8]
   811b8:	f8237822 	str	x2, [x1, x3, lsl #3]
   811bc:	91480000 	add	x0, x0, #0x200, lsl #12
   811c0:	17fffff5 	b	81194 <init_boot_pt+0x30>
   811c4:	d2a7e000 	mov	x0, #0x3f000000            	// #1056964608
   811c8:	14000009 	b	811ec <init_boot_pt+0x88>
   811cc:	d3557403 	ubfx	x3, x0, #21, #9
   811d0:	d28180a2 	mov	x2, #0xc05                 	// #3077
   811d4:	f2e00802 	movk	x2, #0x40, lsl #48
   811d8:	aa020002 	orr	x2, x0, x2
   811dc:	f00000e1 	adrp	x1, a0000 <init_end+0x10000>
   811e0:	f9400421 	ldr	x1, [x1, #8]
   811e4:	f8237822 	str	x2, [x1, x3, lsl #3]
   811e8:	91480000 	add	x0, x0, #0x200, lsl #12
   811ec:	b24077e1 	mov	x1, #0x3fffffff            	// #1073741823
   811f0:	eb01001f 	cmp	x0, x1
   811f4:	54fffec9 	b.ls	811cc <init_boot_pt+0x68>  // b.plast
   811f8:	f00000e0 	adrp	x0, a0000 <init_end+0x10000>
   811fc:	f9401800 	ldr	x0, [x0, #48]
   81200:	d28180a1 	mov	x1, #0xc05                 	// #3077
   81204:	f2a80001 	movk	x1, #0x4000, lsl #16
   81208:	f2e00801 	movk	x1, #0x40, lsl #48
   8120c:	f9000401 	str	x1, [x0, #8]
   81210:	d65f03c0 	ret
   81214:	00000128 	.inst	0x00000128 ; undefined
   81218:	13400004 	.inst	0x13400004 ; undefined
   8121c:	01080008 	.inst	0x01080008 ; undefined
   81220:	0008160d 	.inst	0x0008160d ; undefined
   81224:	0816a60c 	stlxrb	w22, w12, [x16]
   81228:	08114300 	stxrb	w17, w0, [x24]
   8122c:	08116400 	stxrb	w17, w0, [x0]
   81230:	00000000 	.inst	0x00000000 ; undefined
   81234:	0000b000 	.inst	0x0000b000 ; undefined
   81238:	00000000 	.inst	0x00000000 ; undefined
   8123c:	08148500 	stlxrb	w20, w0, [x8]
   81240:	36750200 	tbz	w0, #14, 7b280 <_start-0x4d80>
   81244:	03010034 	.inst	0x03010034 ; undefined
   81248:	00003917 	.inst	0x00003917 ; undefined
   8124c:	07080300 	.inst	0x07080300 ; undefined
   81250:	00088ab6 	.inst	0x00088ab6 ; undefined
   81254:	bb070403 	.inst	0xbb070403 ; undefined
   81258:	0400088a 	add	z10.b, p2/m, z10.b, z4.b
   8125c:	0000002d 	.inst	0x0000002d ; undefined
   81260:	00000058 	.inst	0x00000058 ; undefined
   81264:	00003905 	.inst	0x00003905 ; undefined
   81268:	0001ff00 	.inst	0x0001ff00 ; undefined
   8126c:	0815b906 	stlxrb	w21, w6, [x8]
   81270:	05100100 	mov	z0.b, p0/z, #8
   81274:	00000047 	.inst	0x00000047 ; undefined
   81278:	03091000 	.inst	0x03091000 ; undefined
   8127c:	00086000 	.inst	0x00086000 ; undefined
   81280:	00000000 	.inst	0x00000000 ; undefined
   81284:	0815c706 	stlxrb	w21, w6, [x24]
   81288:	05110100 	mov	z0.b, p1/z, #8
   8128c:	00000047 	.inst	0x00000047 ; undefined
   81290:	03091000 	.inst	0x03091000 ; undefined
   81294:	00084000 	.inst	0x00084000 ; undefined
   81298:	00000000 	.inst	0x00000000 ; undefined
   8129c:	0815d506 	stlxrb	w21, w6, [x8]
   812a0:	05120100 	mov	z0.b, p2/z, #8
   812a4:	00000047 	.inst	0x00000047 ; undefined
   812a8:	03091000 	.inst	0x03091000 ; undefined
   812ac:	00083000 	.inst	0x00083000 ; undefined
   812b0:	00000000 	.inst	0x00000000 ; undefined
   812b4:	0815f106 	stlxrb	w21, w6, [x8]
   812b8:	05140100 	mov	z0.b, p4/z, #8
   812bc:	00000047 	.inst	0x00000047 ; undefined
   812c0:	03091000 	.inst	0x03091000 ; undefined
   812c4:	00087000 	.inst	0x00087000 ; undefined
   812c8:	00000000 	.inst	0x00000000 ; undefined
   812cc:	0815ff06 	stlxrb	w21, w6, [x24]
   812d0:	05150100 	mov	z0.b, p5/z, #8
   812d4:	00000047 	.inst	0x00000047 ; undefined
   812d8:	03091000 	.inst	0x03091000 ; undefined
   812dc:	00085000 	.inst	0x00085000 ; undefined
   812e0:	00000000 	.inst	0x00000000 ; undefined
   812e4:	0815e306 	stlxrb	w21, w6, [x24]
   812e8:	05160100 	mov	z0.b, p6/z, #8
   812ec:	00000047 	.inst	0x00000047 ; undefined
   812f0:	03091000 	.inst	0x03091000 ; undefined
   812f4:	00082000 	.inst	0x00082000 ; undefined
   812f8:	00000000 	.inst	0x00000000 ; undefined
   812fc:	0815ac07 	stlxrb	w21, w7, [x0]
   81300:	06280100 	.inst	0x06280100 ; undefined
   81304:	00081164 	.inst	0x00081164 ; undefined
   81308:	00000000 	.inst	0x00000000 ; undefined
   8130c:	000000b0 	.inst	0x000000b0 ; undefined
   81310:	00000000 	.inst	0x00000000 ; undefined
   81314:	a0089c01 	.inst	0xa0089c01 ; undefined
   81318:	01000816 	.inst	0x01000816 ; undefined
   8131c:	002d0729 	.inst	0x002d0729 ; NYI
   81320:	13c80000 	.inst	0x13c80000 ; undefined
   81324:	13c40008 	.inst	0x13c40008 ; undefined
   81328:	d7080008 	.inst	0xd7080008 ; undefined
   8132c:	01000816 	.inst	0x01000816 ; undefined
   81330:	002d0749 	.inst	0x002d0749 ; NYI
   81334:	140b0000 	b	341334 <img_end+0x281334>
   81338:	14050008 	b	1c1358 <img_end+0x101358>
   8133c:	00000008 	.inst	0x00000008 ; undefined
   81340:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   81344:	030b130e 	.inst	0x030b130e ; undefined
   81348:	110e1b0e 	add	w14, w24, #0x386
   8134c:	10071201 	adr	x1, 8f58c <uart_send_string+0x28b0>
   81350:	02000017 	.inst	0x02000017 ; undefined
   81354:	08030016 	stxrb	w3, w22, [x0]
   81358:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   8135c:	13490b39 	.inst	0x13490b39 ; undefined
   81360:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
   81364:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
   81368:	000e030b 	.inst	0x000e030b ; undefined
   8136c:	01010400 	.inst	0x01010400 ; undefined
   81370:	13011349 	sbfx	w9, w26, #1, #4
   81374:	21050000 	.inst	0x21050000 ; undefined
   81378:	2f134900 	.inst	0x2f134900 ; undefined
   8137c:	06000005 	.inst	0x06000005 ; undefined
   81380:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
   81384:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   81388:	13490b39 	.inst	0x13490b39 ; undefined
   8138c:	0188193f 	.inst	0x0188193f ; undefined
   81390:	00180205 	.inst	0x00180205 ; undefined
   81394:	012e0700 	.inst	0x012e0700 ; undefined
   81398:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
   8139c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   813a0:	19270b39 	.inst	0x19270b39 ; undefined
   813a4:	07120111 	.inst	0x07120111 ; undefined
   813a8:	42971840 	.inst	0x42971840 ; undefined
   813ac:	08000019 	stxrb	w0, w25, [x0]
   813b0:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
   813b4:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   813b8:	13490b39 	.inst	0x13490b39 ; undefined
   813bc:	42b71702 	.inst	0x42b71702 ; undefined
   813c0:	00000017 	.inst	0x00000017 ; undefined
   813c4:	00010102 	.inst	0x00010102 ; undefined
	...
   813d0:	00000094 	.inst	0x00000094 ; undefined
   813d4:	00000000 	.inst	0x00000000 ; undefined
   813d8:	9f300002 	.inst	0x9f300002 ; undefined
   813dc:	00000094 	.inst	0x00000094 ; undefined
   813e0:	00000000 	.inst	0x00000000 ; undefined
   813e4:	000000b0 	.inst	0x000000b0 ; undefined
   813e8:	00000000 	.inst	0x00000000 ; undefined
   813ec:	c00a0007 	.inst	0xc00a0007 ; undefined
   813f0:	1f2448ff 	fnmadd	s31, s7, s4, s18
   813f4:	0000009f 	.inst	0x0000009f ; undefined
	...
   81404:	00000300 	.inst	0x00000300 ; undefined
	...
   81410:	30000000 	adr	x0, 81411 <init_boot_pt+0x2ad>
   81414:	00000000 	.inst	0x00000000 ; undefined
   81418:	02000000 	.inst	0x02000000 ; undefined
   8141c:	309f3000 	adr	x0, fffffffffffbfa1d <physmem_map_num+0xfffff0722d>
   81420:	00000000 	.inst	0x00000000 ; undefined
   81424:	64000000 	.inst	0x64000000 ; undefined
   81428:	00000000 	.inst	0x00000000 ; undefined
   8142c:	01000000 	.inst	0x01000000 ; undefined
   81430:	00685000 	.inst	0x00685000 ; undefined
   81434:	00000000 	.inst	0x00000000 ; undefined
   81438:	00980000 	.inst	0x00980000 ; undefined
   8143c:	00000000 	.inst	0x00000000 ; undefined
   81440:	00010000 	.inst	0x00010000 ; undefined
   81444:	00000050 	.inst	0x00000050 ; undefined
	...
   81454:	00002c00 	.inst	0x00002c00 ; undefined
   81458:	14000200 	b	81c58 <init_boot_pt+0xaf4>
   8145c:	08000812 	stxrb	w0, w18, [x0]
   81460:	00000000 	.inst	0x00000000 ; undefined
   81464:	08116400 	stxrb	w17, w0, [x0]
   81468:	00000000 	.inst	0x00000000 ; undefined
   8146c:	0000b000 	.inst	0x0000b000 ; undefined
	...
   81484:	00012300 	.inst	0x00012300 ; undefined
   81488:	47000300 	.inst	0x47000300 ; undefined
   8148c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
   81490:	0d0efb01 	.inst	0x0d0efb01 ; undefined
   81494:	01010100 	.inst	0x01010100 ; undefined
   81498:	00000001 	.inst	0x00000001 ; undefined
   8149c:	01000001 	.inst	0x01000001 ; undefined
   814a0:	6f68632f 	umlsl2	v15.4s, v25.8h, v8.h[2]
   814a4:	656b2f73 	fmls	z19.h, p3/m, z27.h, z11.h
   814a8:	6c656e72 	ldnp	d18, d27, [x19, #-432]
   814ac:	6372612f 	.inst	0x6372612f ; undefined
   814b0:	61612f68 	.inst	0x61612f68 ; undefined
   814b4:	36686372 	tbz	w18, #13, 82120 <boot_ttbr1_l2+0x120>
   814b8:	6f622f34 	.inst	0x6f622f34 ; undefined
   814bc:	722f746f 	ands	w15, w3, #0xfffe7fff
   814c0:	69707361 	ldpsw	x1, x28, [x27, #-128]
   814c4:	6e692f33 	uqsub	v19.8h, v25.8h, v9.8h
   814c8:	00007469 	.inst	0x00007469 ; undefined
   814cc:	2e756d6d 	umin	v13.4h, v11.4h, v21.4h
   814d0:	00010063 	.inst	0x00010063 ; undefined
   814d4:	19050000 	stlurb	w0, [x0, #80]
   814d8:	64020900 	.inst	0x64020900 ; undefined
   814dc:	00000811 	.inst	0x00000811 ; undefined
   814e0:	03000000 	.inst	0x03000000 ; undefined
   814e4:	03050127 	.inst	0x03050127 ; undefined
   814e8:	01200313 	.inst	0x01200313 ; undefined
   814ec:	06080513 	.inst	0x06080513 ; undefined
   814f0:	2e320513 	uhadd	v19.8b, v8.8b, v18.8b
   814f4:	052d3505 	.inst	0x052d3505 ; undefined
   814f8:	053e0603 	ext	z3.b, z3.b, z16.b, #241
   814fc:	05130608 	mov	z8.b, p3/z, #48
   81500:	35052e32 	cbnz	w18, 8bac4 <boot_cpu_stack+0x2f34>
   81504:	0603051f 	.inst	0x0603051f ; undefined
   81508:	06070523 	.inst	0x06070523 ; undefined
   8150c:	05017a03 	orr	z3.s, z3.s, #0xfffe0003
   81510:	0402000a 	.inst	0x0402000a ; undefined
   81514:	05260601 	ext	z1.b, z1.b, z16.b, #49
   81518:	04020003 	.inst	0x04020003 ; undefined
   8151c:	05010601 	orr	z1.b, z1.b, #0x1
   81520:	04020005 	.inst	0x04020005 ; undefined
   81524:	053d0602 	ext	z2.b, z2.b, z16.b, #233
   81528:	04020013 	.inst	0x04020013 ; undefined
   8152c:	05010602 	orr	z2.b, z2.b, #0x1
   81530:	04020009 	.inst	0x04020009 ; undefined
   81534:	37052702 	tbnz	w2, #0, 7ba14 <_start-0x45ec>
   81538:	02040200 	.inst	0x02040200 ; undefined
   8153c:	053c7903 	.inst	0x053c7903 ; undefined
   81540:	04020023 	.inst	0x04020023 ; undefined
   81544:	053b0602 	ext	z2.b, z2.b, z16.b, #217
   81548:	04020029 	.inst	0x04020029 ; undefined
   8154c:	00010602 	.inst	0x00010602 ; undefined
   81550:	20020402 	.inst	0x20020402 ; undefined
   81554:	0a030e05 	and	w5, w16, w3, lsl #3
   81558:	05052020 	.inst	0x05052020 ; undefined
   8155c:	03040200 	.inst	0x03040200 ; undefined
   81560:	13052106 	sbfx	w6, w8, #5, #4
   81564:	03040200 	.inst	0x03040200 ; undefined
   81568:	09050106 	.inst	0x09050106 ; undefined
   8156c:	03040200 	.inst	0x03040200 ; undefined
   81570:	00370526 	.inst	0x00370526 ; NYI
   81574:	03030402 	.inst	0x03030402 ; undefined
   81578:	36053c7a 	tbz	w26, #0, 7bd04 <_start-0x42fc>
   8157c:	03040200 	.inst	0x03040200 ; undefined
   81580:	3c053b06 	.inst	0x3c053b06 ; undefined
   81584:	03040200 	.inst	0x03040200 ; undefined
   81588:	21050106 	.inst	0x21050106 ; undefined
   8158c:	01040200 	.inst	0x01040200 ; undefined
   81590:	03052006 	.inst	0x03052006 ; undefined
   81594:	01040200 	.inst	0x01040200 ; undefined
   81598:	03060106 	.inst	0x03060106 ; undefined
   8159c:	05133c10 	.inst	0x05133c10 ; undefined
   815a0:	20010626 	.inst	0x20010626 ; undefined
   815a4:	025f0105 	.inst	0x025f0105 ; undefined
   815a8:	01010001 	.inst	0x01010001 ; undefined
   815ac:	74696e69 	.inst	0x74696e69 ; undefined
   815b0:	6f6f625f 	umlsl2	v31.4s, v18.8h, v15.h[2]
   815b4:	74705f74 	.inst	0x74705f74 ; undefined
   815b8:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   815bc:	74745f74 	.inst	0x74745f74 ; undefined
   815c0:	5f307262 	.inst	0x5f307262 ; undefined
   815c4:	6200306c 	.inst	0x6200306c ; undefined
   815c8:	5f746f6f 	.inst	0x5f746f6f ; undefined
   815cc:	72627474 	.inst	0x72627474 ; undefined
   815d0:	316c5f30 	adds	w16, w25, #0xb17, lsl #12
   815d4:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   815d8:	74745f74 	.inst	0x74745f74 ; undefined
   815dc:	5f307262 	.inst	0x5f307262 ; undefined
   815e0:	6200326c 	.inst	0x6200326c ; undefined
   815e4:	5f746f6f 	.inst	0x5f746f6f ; undefined
   815e8:	72627474 	.inst	0x72627474 ; undefined
   815ec:	326c5f31 	.inst	0x326c5f31 ; undefined
   815f0:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
   815f4:	74745f74 	.inst	0x74745f74 ; undefined
   815f8:	5f317262 	.inst	0x5f317262 ; undefined
   815fc:	6200306c 	.inst	0x6200306c ; undefined
   81600:	5f746f6f 	.inst	0x5f746f6f ; undefined
   81604:	72627474 	.inst	0x72627474 ; undefined
   81608:	316c5f31 	adds	w17, w25, #0xb17, lsl #12
   8160c:	554e4700 	.inst	0x554e4700 ; undefined
   81610:	37314320 	tbnz	w0, #6, 83e74 <boot_ttbr0_l2+0xe74>
   81614:	332e3920 	.inst	0x332e3920 ; undefined
   81618:	2d20302e 	stp	s14, s12, [x1, #-256]
   8161c:	6372616d 	.inst	0x6372616d ; undefined
   81620:	72613d68 	.inst	0x72613d68 ; undefined
   81624:	2d38766d 	stp	s13, s29, [x19, #-64]
   81628:	6f6e2b61 	umlal2	v1.4s, v27.8h, v14.h[6]
   8162c:	2d207066 	stp	s6, s28, [x3, #-256]
   81630:	74696c6d 	.inst	0x74696c6d ; undefined
   81634:	2d656c74 	ldp	s20, s27, [x3, #-216]
   81638:	69646e65 	ldpsw	x5, x27, [x19, #-224]
   8163c:	2d206e61 	stp	s1, s27, [x19, #-256]
   81640:	6962616d 	ldpsw	x13, x24, [x11, #-240]
   81644:	36706c3d 	tbz	w29, #14, 823c8 <boot_ttbr1_l2+0x3c8>
   81648:	672d2034 	.inst	0x672d2034 ; undefined
   8164c:	334f2d20 	.inst	0x334f2d20 ; undefined
   81650:	674f2d20 	.inst	0x674f2d20 ; undefined
   81654:	66662d20 	.inst	0x66662d20 ; undefined
   81658:	73656572 	.inst	0x73656572 ; undefined
   8165c:	646e6174 	.inst	0x646e6174 ; undefined
   81660:	20676e69 	.inst	0x20676e69 ; undefined
   81664:	4950662d 	.inst	0x4950662d ; undefined
   81668:	662d2043 	.inst	0x662d2043 ; undefined
   8166c:	6e797361 	uabdl2	v1.4s, v27.8h, v25.8h
   81670:	6f726863 	umlsl2	v3.4s, v3.8h, v2.h[7]
   81674:	73756f6e 	.inst	0x73756f6e ; undefined
   81678:	776e752d 	.inst	0x776e752d ; undefined
   8167c:	2d646e69 	ldp	s9, s27, [x19, #-224]
   81680:	6c626174 	ldnp	d20, d24, [x11, #-480]
   81684:	2d207365 	stp	s5, s28, [x27, #-256]
   81688:	61747366 	.inst	0x61747366 ; undefined
   8168c:	632d6b63 	.inst	0x632d6b63 ; undefined
   81690:	6873616c 	.inst	0x6873616c ; undefined
   81694:	6f72702d 	fcmla	v13.8h, v1.8h, v18.h[1], #270
   81698:	74636574 	.inst	0x74636574 ; undefined
   8169c:	006e6f69 	.inst	0x006e6f69 ; undefined
   816a0:	64646176 	.inst	0x64646176 ; undefined
   816a4:	632f0072 	.inst	0x632f0072 ; undefined
   816a8:	2f736f68 	.inst	0x2f736f68 ; undefined
   816ac:	6e72656b 	umax	v11.8h, v11.8h, v18.8h
   816b0:	612f6c65 	.inst	0x612f6c65 ; undefined
   816b4:	2f686372 	umlsl	v18.4s, v27.4h, v8.h[2]
   816b8:	63726161 	.inst	0x63726161 ; undefined
   816bc:	2f343668 	ursra	v8.2s, v19.2s, #12
   816c0:	746f6f62 	.inst	0x746f6f62 ; undefined
   816c4:	7361722f 	.inst	0x7361722f ; undefined
   816c8:	2f336970 	.inst	0x2f336970 ; undefined
   816cc:	74696e69 	.inst	0x74696e69 ; undefined
   816d0:	756d6d2f 	.inst	0x756d6d2f ; undefined
   816d4:	7000632e 	adr	x14, 8233b <boot_ttbr1_l2+0x33b>
   816d8:	72646461 	.inst	0x72646461 ; undefined
   816dc:	43434700 	.inst	0x43434700 ; undefined
   816e0:	5528203a 	.inst	0x5528203a ; undefined
   816e4:	746e7562 	.inst	0x746e7562 ; undefined
   816e8:	2e392075 	usubl	v21.8h, v3.8b, v25.8b
   816ec:	2d302e33 	stp	s19, s11, [x17, #-128]
   816f0:	62753731 	.inst	0x62753731 ; undefined
   816f4:	75746e75 	.inst	0x75746e75 ; undefined
   816f8:	30327e31 	adr	x17, e66bd <img_end+0x266bd>
   816fc:	2934302e 	stp	w14, w12, [x1, #-96]
   81700:	332e3920 	.inst	0x332e3920 ; undefined
   81704:	0000302e 	.inst	0x0000302e ; undefined
   81708:	00000010 	.inst	0x00000010 ; undefined
   8170c:	00000000 	.inst	0x00000000 ; undefined
   81710:	00527a01 	.inst	0x00527a01 ; undefined
   81714:	011e7804 	.inst	0x011e7804 ; undefined
   81718:	001f0c1b 	.inst	0x001f0c1b ; undefined
   8171c:	00000010 	.word	0x00000010
   81720:	00000018 	.word	0x00000018
   81724:	fffffa40 	.word	0xfffffa40
   81728:	000000b0 	.word	0x000000b0
	...

0000000000082000 <boot_ttbr1_l2>:
	...

0000000000083000 <boot_ttbr0_l2>:
	...

0000000000084000 <boot_ttbr0_l1>:
	...

0000000000085000 <boot_ttbr1_l1>:
	...

0000000000086000 <boot_ttbr0_l0>:
	...

0000000000087000 <boot_ttbr1_l0>:
	...

0000000000088000 <arm64_elX_to_el1>:
   88000:	d5384249 	mrs	x9, currentel
   88004:	f100113f 	cmp	x9, #0x4
   88008:	54000480 	b.eq	88098 <arm64_elX_to_el1+0x98>  // b.none
   8800c:	f100213f 	cmp	x9, #0x8
   88010:	54000120 	b.eq	88034 <arm64_elX_to_el1+0x34>  // b.none
   88014:	d53e1109 	mrs	x9, scr_el3
   88018:	d280a02a 	mov	x10, #0x501                 	// #1281
   8801c:	aa0a0129 	orr	x9, x9, x10
   88020:	d51e1109 	msr	scr_el3, x9
   88024:	d28078a9 	mov	x9, #0x3c5                 	// #965
   88028:	d51e4009 	msr	spsr_el3, x9
   8802c:	10000369 	adr	x9, 88098 <arm64_elX_to_el1+0x98>
   88030:	d51e4029 	msr	elr_el3, x9
   88034:	d53ce109 	mrs	x9, cnthctl_el2
   88038:	b2400529 	orr	x9, x9, #0x3
   8803c:	d51ce109 	msr	cnthctl_el2, x9
   88040:	d51ce07f 	msr	cntvoff_el2, xzr
   88044:	d51c211f 	msr	vttbr_el2, xzr
   88048:	d2867fe9 	mov	x9, #0x33ff                	// #13311
   8804c:	d51c1149 	msr	cptr_el2, x9
   88050:	d2a00609 	mov	x9, #0x300000              	// #3145728
   88054:	d5181049 	msr	cpacr_el1, x9
   88058:	d5380409 	mrs	x9, id_aa64pfr0_el1
   8805c:	92680d29 	and	x9, x9, #0xf000000
   88060:	b40000c9 	cbz	x9, 88078 <arm64_elX_to_el1+0x78>
   88064:	d53cc9a9 	mrs	x9, s3_4_c12_c9_5
   88068:	d280012a 	mov	x10, #0x9                   	// #9
   8806c:	aa0a0129 	orr	x9, x9, x10
   88070:	d51cc9a9 	msr	s3_4_c12_c9_5, x9
   88074:	d51ccb1f 	msr	s3_4_c12_c11_0, xzr
   88078:	d2b00009 	mov	x9, #0x80000000            	// #2147483648
   8807c:	d51c1109 	msr	hcr_el2, x9
   88080:	100000c9 	adr	x9, 88098 <arm64_elX_to_el1+0x98>
   88084:	d51c4029 	msr	elr_el2, x9
   88088:	d28078a9 	mov	x9, #0x3c5                 	// #965
   8808c:	d51c4009 	msr	spsr_el2, x9
   88090:	d5033fdf 	isb
   88094:	d69f03e0 	eret
   88098:	d65f03c0 	ret

000000000008809c <invalidate_cache_all>:
   8809c:	d5390020 	mrs	x0, clidr_el1
   880a0:	12080803 	and	w3, w0, #0x7000000
   880a4:	53177c63 	lsr	w3, w3, #23
   880a8:	340003e3 	cbz	w3, 88124 <invalidate_cache_all+0x88>
   880ac:	5280000a 	mov	w10, #0x0                   	// #0
   880b0:	52800028 	mov	w8, #0x1                   	// #1
   880b4:	0b4a0542 	add	w2, w10, w10, lsr #1
   880b8:	1ac22401 	lsr	w1, w0, w2
   880bc:	12000821 	and	w1, w1, #0x7
   880c0:	7100083f 	cmp	w1, #0x2
   880c4:	5400028b 	b.lt	88114 <invalidate_cache_all+0x78>  // b.tstop
   880c8:	d51a000a 	msr	csselr_el1, x10
   880cc:	d5033fdf 	isb
   880d0:	d5390001 	mrs	x1, ccsidr_el1
   880d4:	12000822 	and	w2, w1, #0x7
   880d8:	11001042 	add	w2, w2, #0x4
   880dc:	53033024 	ubfx	w4, w1, #3, #10
   880e0:	5ac01085 	clz	w5, w4
   880e4:	1ac52089 	lsl	w9, w4, w5
   880e8:	1ac5210c 	lsl	w12, w8, w5
   880ec:	530d6c27 	ubfx	w7, w1, #13, #15
   880f0:	1ac220e7 	lsl	w7, w7, w2
   880f4:	1ac2210d 	lsl	w13, w8, w2
   880f8:	2a09014b 	orr	w11, w10, w9
   880fc:	2a07016b 	orr	w11, w11, w7
   88100:	d508764b 	dc	isw, x11
   88104:	6b0d00e7 	subs	w7, w7, w13
   88108:	54ffff8a 	b.ge	880f8 <invalidate_cache_all+0x5c>  // b.tcont
   8810c:	6b0c0129 	subs	w9, w9, w12
   88110:	54fffeea 	b.ge	880ec <invalidate_cache_all+0x50>  // b.tcont
   88114:	1100094a 	add	w10, w10, #0x2
   88118:	6b0a007f 	cmp	w3, w10
   8811c:	d5033f9f 	dsb	sy
   88120:	54fffcac 	b.gt	880b4 <invalidate_cache_all+0x18>
   88124:	d508751f 	ic	iallu
   88128:	d5033fdf 	isb
   8812c:	d65f03c0 	ret

0000000000088130 <el1_mmu_activate>:
   88130:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   88134:	910003fd 	mov	x29, sp
   88138:	97ffffd9 	bl	8809c <invalidate_cache_all>
   8813c:	d508831f 	tlbi	vmalle1is
   88140:	d5033fdf 	isb
   88144:	d5033f9f 	dsb	sy
   88148:	58000388 	ldr	x8, 881b8 <delay+0xc>
   8814c:	d518a208 	msr	mair_el1, x8
   88150:	58000388 	ldr	x8, 881c0 <delay+0x14>
   88154:	d5182048 	msr	tcr_el1, x8
   88158:	d5033fdf 	isb
   8815c:	d0ffffe8 	adrp	x8, 86000 <boot_ttbr0_l0>
   88160:	d5182008 	msr	ttbr0_el1, x8
   88164:	f0ffffe8 	adrp	x8, 87000 <boot_ttbr1_l0>
   88168:	d5182028 	msr	ttbr1_el1, x8
   8816c:	d5033fdf 	isb
   88170:	d5381008 	mrs	x8, sctlr_el1
   88174:	b2400108 	orr	x8, x8, #0x1
   88178:	927ef908 	and	x8, x8, #0xfffffffffffffffd
   8817c:	927bf908 	and	x8, x8, #0xffffffffffffffef
   88180:	927cf908 	and	x8, x8, #0xfffffffffffffff7
   88184:	b27a0108 	orr	x8, x8, #0x40
   88188:	b27e0108 	orr	x8, x8, #0x4
   8818c:	b2740108 	orr	x8, x8, #0x1000
   88190:	d5181008 	msr	sctlr_el1, x8
   88194:	a8c17bfd 	ldp	x29, x30, [sp], #16
   88198:	d65f03c0 	ret

000000000008819c <early_put32>:
   8819c:	b9000001 	str	w1, [x0]
   881a0:	d65f03c0 	ret

00000000000881a4 <early_get32>:
   881a4:	b9400000 	ldr	w0, [x0]
   881a8:	d65f03c0 	ret

00000000000881ac <delay>:
   881ac:	f1000400 	subs	x0, x0, #0x1
   881b0:	54ffffe1 	b.ne	881ac <delay>  // b.any
   881b4:	d65f03c0 	ret
   881b8:	004404ff 	.word	0x004404ff
   881bc:	00000000 	.word	0x00000000
   881c0:	35103510 	.word	0x35103510
   881c4:	00000015 	.word	0x00000015
   881c8:	000000d1 	.word	0x000000d1
   881cc:	00490003 	.word	0x00490003
   881d0:	01040000 	.word	0x01040000
   881d4:	000d0efb 	.word	0x000d0efb
   881d8:	01010101 	.word	0x01010101
   881dc:	01000000 	.word	0x01000000
   881e0:	2f010000 	.word	0x2f010000
   881e4:	736f6863 	.word	0x736f6863
   881e8:	72656b2f 	.word	0x72656b2f
   881ec:	2f6c656e 	.word	0x2f6c656e
   881f0:	68637261 	.word	0x68637261
   881f4:	7261612f 	.word	0x7261612f
   881f8:	34366863 	.word	0x34366863
   881fc:	6f6f622f 	.word	0x6f6f622f
   88200:	61722f74 	.word	0x61722f74
   88204:	33697073 	.word	0x33697073
   88208:	696e692f 	.word	0x696e692f
   8820c:	74000074 	.word	0x74000074
   88210:	736c6f6f 	.word	0x736c6f6f
   88214:	0100532e 	.word	0x0100532e
   88218:	00000000 	.word	0x00000000
   8821c:	80000209 	.word	0x80000209
   88220:	00000008 	.word	0x00000008
   88224:	3b030000 	.word	0x3b030000
   88228:	21212401 	.word	0x21212401
   8822c:	21212421 	.word	0x21212421
   88230:	21212421 	.word	0x21212421
   88234:	21212521 	.word	0x21212521
   88238:	21232321 	.word	0x21232321
   8823c:	21232123 	.word	0x21232123
   88240:	21212321 	.word	0x21212321
   88244:	21242321 	.word	0x21242321
   88248:	21212123 	.word	0x21212123
   8824c:	24232122 	.word	0x24232122
   88250:	21212121 	.word	0x21212121
   88254:	21212221 	.word	0x21212221
   88258:	21212121 	.word	0x21212121
   8825c:	21212121 	.word	0x21212121
   88260:	23212121 	.word	0x23212121
   88264:	21222121 	.word	0x21222121
   88268:	22212121 	.word	0x22212121
   8826c:	21212221 	.word	0x21212221
   88270:	21212421 	.word	0x21212421
   88274:	21202b03 	.word	0x21202b03
   88278:	21212322 	.word	0x21212322
   8827c:	21252123 	.word	0x21252123
   88280:	21212321 	.word	0x21212321
   88284:	23222121 	.word	0x23222121
   88288:	21212123 	.word	0x21212123
   8828c:	22212222 	.word	0x22212222
   88290:	24212621 	.word	0x24212621
   88294:	21212421 	.word	0x21212421
   88298:	01000502 	.word	0x01000502
   8829c:	00002a01 	.word	0x00002a01
   882a0:	cb000200 	.word	0xcb000200
   882a4:	08000882 	.word	0x08000882
   882a8:	0881c801 	.word	0x0881c801
   882ac:	08800000 	.word	0x08800000
   882b0:	00000000 	.word	0x00000000
   882b4:	0881c800 	.word	0x0881c800
   882b8:	00000000 	.word	0x00000000
   882bc:	08831000 	.word	0x08831000
   882c0:	08114300 	.word	0x08114300
   882c4:	08115700 	.word	0x08115700
   882c8:	01800100 	.word	0x01800100
   882cc:	06100011 	.word	0x06100011
   882d0:	01120111 	.word	0x01120111
   882d4:	0e1b0e03 	.word	0x0e1b0e03
   882d8:	05130e25 	.word	0x05130e25
   882dc:	00000000 	.word	0x00000000
   882e0:	0000002c 	.word	0x0000002c
   882e4:	829d0002 	.word	0x829d0002
   882e8:	00080008 	.word	0x00080008
   882ec:	00000000 	.word	0x00000000
   882f0:	00088000 	.word	0x00088000
   882f4:	00000000 	.word	0x00000000
   882f8:	000001c8 	.word	0x000001c8
	...
   88310:	6f68632f 	.word	0x6f68632f
   88314:	656b2f73 	.word	0x656b2f73
   88318:	6c656e72 	.word	0x6c656e72
   8831c:	6372612f 	.word	0x6372612f
   88320:	61612f68 	.word	0x61612f68
   88324:	36686372 	.word	0x36686372
   88328:	6f622f34 	.word	0x6f622f34
   8832c:	722f746f 	.word	0x722f746f
   88330:	69707361 	.word	0x69707361
   88334:	6e692f33 	.word	0x6e692f33
   88338:	742f7469 	.word	0x742f7469
   8833c:	736c6f6f 	.word	0x736c6f6f
   88340:	0000532e 	.word	0x0000532e

0000000000088344 <clear_bss>:
   88344:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   88348:	f9400c00 	ldr	x0, [x0, #24]
   8834c:	900000c1 	adrp	x1, a0000 <init_end+0x10000>
   88350:	f9401421 	ldr	x1, [x1, #40]
   88354:	eb01001f 	cmp	x0, x1
   88358:	54000062 	b.cs	88364 <clear_bss+0x20>  // b.hs, b.nlast
   8835c:	3800141f 	strb	wzr, [x0], #1
   88360:	17fffffd 	b	88354 <clear_bss+0x10>
   88364:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   88368:	f9402000 	ldr	x0, [x0, #64]
   8836c:	f900001f 	str	xzr, [x0]
   88370:	d65f03c0 	ret

0000000000088374 <init_c>:
   88374:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   88378:	910003fd 	mov	x29, sp
   8837c:	97fffff2 	bl	88344 <clear_bss>
   88380:	94001218 	bl	8cbe0 <early_uart_init>
   88384:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   88388:	910fe000 	add	x0, x0, #0x3f8
   8838c:	94001254 	bl	8ccdc <uart_send_string>
   88390:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   88394:	91102000 	add	x0, x0, #0x408
   88398:	94001251 	bl	8ccdc <uart_send_string>
   8839c:	97ffe372 	bl	81164 <init_boot_pt>
   883a0:	97ffff64 	bl	88130 <el1_mmu_activate>
   883a4:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883a8:	9110c000 	add	x0, x0, #0x430
   883ac:	9400124c 	bl	8ccdc <uart_send_string>
   883b0:	90000000 	adrp	x0, 88000 <arm64_elX_to_el1>
   883b4:	91112000 	add	x0, x0, #0x448
   883b8:	94001249 	bl	8ccdc <uart_send_string>
   883bc:	900000c0 	adrp	x0, a0000 <init_end+0x10000>
   883c0:	f9402400 	ldr	x0, [x0, #72]
   883c4:	97ffdf1d 	bl	80038 <__start_kernel_veneer>
   883c8:	a8c17bfd 	ldp	x29, x30, [sp], #16
   883cc:	d65f03c0 	ret

00000000000883d0 <clear_bss_flag>:
   883d0:	0000beef 00000000                       ........

00000000000883d8 <secondary_boot_flag>:
   883d8:	0000beef 00000000 00000000 00000000     ................
	...
   883f8:	746f6f62 6e69203a 635f7469 00000a0d     boot: init_c....
   88408:	4f4f425b 49205d54 6174736e 62206c6c     [BOOT] Install b
   88418:	20746f6f 65676170 62617420 0a0d656c     oot page table..
	...
   88430:	4f4f425b 45205d54 6c62616e 6c652065     [BOOT] Enable el
   88440:	4d4d2031 000a0d55 4f4f425b 4a205d54     1 MMU...[BOOT] J
   88450:	20706d75 6b206f74 656e7265 616d206c     ump to kernel ma
   88460:	0a0d6e69 00027b00 e4000400 08000886     in...{..........
   88470:	08160d01 8af80c00 11430008 83440008     ..........C...D.
   88480:	00000008 008c0000 00000000 88db0000     ................
   88490:	75020008 03003436 003e1c05 2d030000     ...u64....>....-
   884a0:	04000000 8ab10708 04040008 088abb07     ................
   884b0:	07020400 00088a6c 4d080104 0400088a     ....l......M....
   884c0:	8ae00508 04050008 746e6905 05020400     .........int....
   884d0:	00088aee 4f060104 0400088a 8a560801     .......O......V.
   884e0:	05060008 0200088a 00760d08 c8060000     ..........v.....
   884f0:	0200088a 00760d09 76070000 ac000000     ......v....v....
   88500:	08000000 000000ac 00ac0903 0fff0000     ................
   88510:	07080400 00088ab6 088b2c0a 06070100     .........,......
   88520:	00000095 90030910 0000088b 07000000     ................
   88530:	000000da 000000da 0000ac08 04000300     ................
   88540:	8ae50508 1a0b0008 0100088a 00ca0613     ................
   88550:	03090000 000883d8 00000000 088a3e0b     .............>..
   88560:	0e140100 00000039 83d00309 00000008     ....9...........
   88570:	aa0c0000 0100088a 83740627 00000008     ........'.t.....
   88580:	005c0000 00000000 9c010000 000001e9     ..\.............
   88590:	0883800d 00000000 0001e900 83840d00     ................
   885a0:	00000008 02420000 900e0000 00000883     ......B.........
   885b0:	4e000000 64000002 0f000001 03095001     ...N...d.....P..
   885c0:	000883f8 00000000 839c0e00 00000008     ................
   885d0:	024e0000 01830000 010f0000 08030950     ..N.........P...
   885e0:	00000884 00000000 0883a00d 00000000     ................
   885f0:	00025a00 83a40d00 00000008 02660000     .Z............f.
   88600:	b00e0000 00000883 4e000000 bc000002     ...........N....
   88610:	0f000001 03095001 00088430 00000000     .....P..0.......
   88620:	83bc0e00 00000008 024e0000 01db0000     ..........N.....
   88630:	010f0000 48030950 00000884 00000000     ....P..H........
   88640:	0883c80d 00000000 00027200 10100000     .........r......
   88650:	0100088a 83440d1a 00000008 00300000     ......D.......0.
   88660:	00000000 9c010000 00000242 088ad111     ........B.......
   88670:	071b0100 0000002d 00088812 00088810     ....-...........
   88680:	088a7f11 071c0100 0000002d 00088837     ........-...7...
   88690:	00088835 01006912 002d071d 88600000     5....i....-...`.
   886a0:	885a0008 13000008 00088a2e 00088a2e     ..Z.............
   886b0:	13061701 00088a8c 00088a8c 13061801     ................
   886c0:	000815ac 000815ac 130d0402 00088a5b     ............[...
   886d0:	00088a5b 130d0302 00088a9d 00088a9d     [...............
   886e0:	000d0602 25011101 030b130e 110e1b0e     .......%........
   886f0:	10071201 02000017 08030016 0b3b0b3a     ............:.;.
   88700:	13490b39 35030000 00134900 00240400     9.I....5.I....$.
   88710:	0b3e0b0b 00000e03 0b002405 030b3e0b     ..>......$...>..
   88720:	06000008 0e030034 0b3b0b3a 13490b39     ....4...:.;.9.I.
   88730:	193c193f 01070000 01134901 08000013     ?.<......I......
   88740:	13490021 00000b2f 49002109 00052f13     !.I./....!.I./..
   88750:	00340a00 0b3a0e03 0b390b3b 193f1349     ..4...:.;.9.I.?.
   88760:	020b0188 0b000018 0e030034 0b3b0b3a     ........4...:.;.
   88770:	13490b39 1802193f 2e0c0000 03193f01     9.I.?........?..
   88780:	3b0b3a0e 270b390b 12011119 97184007     .:.;.9.'.....@..
   88790:	13011942 890d0000 11000182 00133101     B............1..
   887a0:	82890e00 01110101 13011331 8a0f0000     ........1.......
   887b0:	02000182 18429118 2e100000 3a0e0301     ......B........:
   887c0:	390b3b0b 1119270b 40071201 19429718     .;.9.'.....@..B.
   887d0:	00001301 03003411 3b0b3a0e 490b390b     .....4...:.;.9.I
   887e0:	b7170213 00001742 03003412 3b0b3a08     ....B....4...:.;
   887f0:	490b390b b7170213 00001742 3f002e13     .9.I....B......?
   88800:	6e193c19 3a0e030e 390b3b0b 0000000b     .<.n...:.;.9....
   88810:	00080100 00000000 00100000 00000000     ................
   88820:	00010000 00000050 00000000 00000000     ....P...........
   88830:	00000000 10000000 00000000 30000000     ...............0
   88840:	00000000 01000000 00005100 00000000     .........Q......
	...
   88858:	00010000 00010100 00000010 00000000     ................
   88868:	0000001c 00000000 1c500001 00000000     ..........P.....
   88878:	1c000000 00000000 03000000 9f7f7000     .............p..
   88888:	0000001c 00000000 00000024 00000000     ........$.......
   88898:	00500001 00000000 00000000 00000000     ..P.............
   888a8:	2c000000 02000000 08846500 00000800     ...,.....e......
   888b8:	44000000 00000883 8c000000 00000000     ...D............
	...
   888d8:	26000000 03000001 0000a900 fb010400     ...&............
   888e8:	01000d0e 00010101 00010000 632f0100     ............../c
   888f8:	2f736f68 6e72656b 612f6c65 2f686372     hos/kernel/arch/
   88908:	63726161 2f343668 746f6f62 7361722f     aarch64/boot/ras
   88918:	2f336970 74696e69 68632f00 6b2f736f     pi3/init./chos/k
   88928:	656e7265 72612f6c 612f6863 68637261     ernel/arch/aarch
   88938:	622f3436 2f746f6f 70736172 692f3369     64/boot/raspi3/i
   88948:	756c636e 2f006564 736f6863 72656b2f     nclude./chos/ker
   88958:	2f6c656e 6c636e69 2f656475 6d6d6f63     nel/include/comm
   88968:	00006e6f 74696e69 632e635f 00000100     on..init_c.c....
   88978:	746f6f62 0200682e 79740000 2e736570     boot.h....types.
   88988:	00030068 1d050000 44020900 00000883     h..........D....
   88998:	03000000 03050119 14131313 01061205     ................
   889a8:	2f060305 01061005 30060305 02001c05     .../.......0....
   889b8:	05010104 04020003 05010601 04020033     ............3...
   889c8:	052e0603 0402003e 05010603 0402002e     ....>...........
   889d8:	00200603 06030402 06030501 06120522     .. ........."...
   889e8:	01052001 0613052f 30030522 3d3f2123     . ../..."..0#!?=
   889f8:	3d3f2123 3f060105 01000202 73625f01     #!?=...?....._bs
   88a08:	74735f73 00747261 61656c63 73625f72     s_start.clear_bs
   88a18:	65730073 646e6f63 5f797261 746f6f62     s.secondary_boot
   88a28:	616c665f 61650067 5f796c72 74726175     _flag.early_uart
   88a38:	696e695f 6c630074 5f726165 5f737362     _init.clear_bss_
   88a48:	67616c66 736e7500 656e6769 68632064     flag.unsigned ch
   88a58:	65007261 6d5f316c 615f756d 76697463     ar.el1_mmu_activ
   88a68:	00657461 726f6873 6e752074 6e676973     ate.short unsign
   88a78:	69206465 6200746e 655f7373 615f646e     ed int.bss_end_a
   88a88:	00726464 74726175 6e65735f 74735f64     ddr.uart_send_st
   88a98:	676e6972 61747300 6b5f7472 656e7265     ring.start_kerne
   88aa8:	6e69006c 635f7469 6e6f6c00 6f6c2067     l.init_c.long lo
   88ab8:	7520676e 6769736e 2064656e 00746e69     ng unsigned int.
   88ac8:	7373625f 646e655f 73736200 6174735f     _bss_end.bss_sta
   88ad8:	615f7472 00726464 676e6f6c 6e6f6c20     rt_addr.long lon
   88ae8:	6e692067 68730074 2074726f 00746e69     g int.short int.
   88af8:	6f68632f 656b2f73 6c656e72 6372612f     /chos/kernel/arc
   88b08:	61612f68 36686372 6f622f34 722f746f     h/aarch64/boot/r
   88b18:	69707361 6e692f33 692f7469 5f74696e     aspi3/init/init_
   88b28:	00632e63 746f6f62 7570635f 6174735f     c.c.boot_cpu_sta
   88b38:	00006b63 00000000 00000010 00000000     ck..............
   88b48:	00527a01 011e7804 001f0c1b 00000010     .zR..x..........
   88b58:	00000018 fffff7e8 00000030 00000000     ........0.......
   88b68:	0000001c 0000002c fffff804 0000005c     ....,.......\...
   88b78:	100e4100 019e029d 0eddde55 00000000     .A......U.......
	...

0000000000088b90 <boot_cpu_stack>:
	...

000000000008cb90 <early_uart_lsr>:
   8cb90:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   8cb94:	910003fd 	mov	x29, sp
   8cb98:	d28a0a80 	mov	x0, #0x5054                	// #20564
   8cb9c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8cba0:	97ffed81 	bl	881a4 <early_get32>
   8cba4:	a8c17bfd 	ldp	x29, x30, [sp], #16
   8cba8:	d65f03c0 	ret

000000000008cbac <early_uart_send>:
   8cbac:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8cbb0:	910003fd 	mov	x29, sp
   8cbb4:	f9000bf3 	str	x19, [sp, #16]
   8cbb8:	2a0003f3 	mov	w19, w0
   8cbbc:	97fffff5 	bl	8cb90 <early_uart_lsr>
   8cbc0:	362fffe0 	tbz	w0, #5, 8cbbc <early_uart_send+0x10>
   8cbc4:	2a1303e1 	mov	w1, w19
   8cbc8:	d28a0800 	mov	x0, #0x5040                	// #20544
   8cbcc:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8cbd0:	97ffed73 	bl	8819c <early_put32>
   8cbd4:	f9400bf3 	ldr	x19, [sp, #16]
   8cbd8:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8cbdc:	d65f03c0 	ret

000000000008cbe0 <early_uart_init>:
   8cbe0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8cbe4:	910003fd 	mov	x29, sp
   8cbe8:	a90153f3 	stp	x19, x20, [sp, #16]
   8cbec:	d2800093 	mov	x19, #0x4                   	// #4
   8cbf0:	f2a7e413 	movk	x19, #0x3f20, lsl #16
   8cbf4:	aa1303e0 	mov	x0, x19
   8cbf8:	97ffed6b 	bl	881a4 <early_get32>
   8cbfc:	120e6400 	and	w0, w0, #0xfffc0fff
   8cc00:	52840001 	mov	w1, #0x2000                	// #8192
   8cc04:	72a00021 	movk	w1, #0x1, lsl #16
   8cc08:	2a010001 	orr	w1, w0, w1
   8cc0c:	aa1303e0 	mov	x0, x19
   8cc10:	97ffed63 	bl	8819c <early_put32>
   8cc14:	52800001 	mov	w1, #0x0                   	// #0
   8cc18:	d2801280 	mov	x0, #0x94                  	// #148
   8cc1c:	f2a7e400 	movk	x0, #0x3f20, lsl #16
   8cc20:	97ffed5f 	bl	8819c <early_put32>
   8cc24:	d28012c0 	mov	x0, #0x96                  	// #150
   8cc28:	97ffed61 	bl	881ac <delay>
   8cc2c:	91025273 	add	x19, x19, #0x94
   8cc30:	52980001 	mov	w1, #0xc000                	// #49152
   8cc34:	aa1303e0 	mov	x0, x19
   8cc38:	97ffed59 	bl	8819c <early_put32>
   8cc3c:	d28012c0 	mov	x0, #0x96                  	// #150
   8cc40:	97ffed5b 	bl	881ac <delay>
   8cc44:	52800001 	mov	w1, #0x0                   	// #0
   8cc48:	aa1303e0 	mov	x0, x19
   8cc4c:	97ffed54 	bl	8819c <early_put32>
   8cc50:	52800021 	mov	w1, #0x1                   	// #1
   8cc54:	d28a0080 	mov	x0, #0x5004                	// #20484
   8cc58:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8cc5c:	97ffed50 	bl	8819c <early_put32>
   8cc60:	d28a0894 	mov	x20, #0x5044                	// #20548
   8cc64:	f2a7e434 	movk	x20, #0x3f21, lsl #16
   8cc68:	52800001 	mov	w1, #0x0                   	// #0
   8cc6c:	aa1403e0 	mov	x0, x20
   8cc70:	97ffed4b 	bl	8819c <early_put32>
   8cc74:	d28a0c13 	mov	x19, #0x5060                	// #20576
   8cc78:	f2a7e433 	movk	x19, #0x3f21, lsl #16
   8cc7c:	52800001 	mov	w1, #0x0                   	// #0
   8cc80:	aa1303e0 	mov	x0, x19
   8cc84:	97ffed46 	bl	8819c <early_put32>
   8cc88:	52800001 	mov	w1, #0x0                   	// #0
   8cc8c:	aa1403e0 	mov	x0, x20
   8cc90:	97ffed43 	bl	8819c <early_put32>
   8cc94:	52800061 	mov	w1, #0x3                   	// #3
   8cc98:	d28a0980 	mov	x0, #0x504c                	// #20556
   8cc9c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8cca0:	97ffed3f 	bl	8819c <early_put32>
   8cca4:	52800001 	mov	w1, #0x0                   	// #0
   8cca8:	d28a0a00 	mov	x0, #0x5050                	// #20560
   8ccac:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ccb0:	97ffed3b 	bl	8819c <early_put32>
   8ccb4:	528021c1 	mov	w1, #0x10e                 	// #270
   8ccb8:	d28a0d00 	mov	x0, #0x5068                	// #20584
   8ccbc:	f2a7e420 	movk	x0, #0x3f21, lsl #16
   8ccc0:	97ffed37 	bl	8819c <early_put32>
   8ccc4:	52800061 	mov	w1, #0x3                   	// #3
   8ccc8:	aa1303e0 	mov	x0, x19
   8cccc:	97ffed34 	bl	8819c <early_put32>
   8ccd0:	a94153f3 	ldp	x19, x20, [sp, #16]
   8ccd4:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8ccd8:	d65f03c0 	ret

000000000008ccdc <uart_send_string>:
   8ccdc:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   8cce0:	910003fd 	mov	x29, sp
   8cce4:	f9000bf3 	str	x19, [sp, #16]
   8cce8:	aa0003f3 	mov	x19, x0
   8ccec:	39400260 	ldrb	w0, [x19]
   8ccf0:	34000080 	cbz	w0, 8cd00 <uart_send_string+0x24>
   8ccf4:	97ffffae 	bl	8cbac <early_uart_send>
   8ccf8:	91000673 	add	x19, x19, #0x1
   8ccfc:	17fffffc 	b	8ccec <uart_send_string+0x10>
   8cd00:	f9400bf3 	ldr	x19, [sp, #16]
   8cd04:	a8c27bfd 	ldp	x29, x30, [sp], #32
   8cd08:	d65f03c0 	ret
   8cd0c:	0000031c 	.inst	0x0000031c ; undefined
   8cd10:	d02c0004 	adrp	x4, 5808e000 <img_end+0x57fce000>
   8cd14:	01080008 	.inst	0x01080008 ; undefined
   8cd18:	0008160d 	.inst	0x0008160d ; undefined
   8cd1c:	08d3d40c 	.inst	0x08d3d40c ; undefined
   8cd20:	08114300 	stxrb	w17, w0, [x24]
   8cd24:	08cb9000 	.inst	0x08cb9000 ; undefined
   8cd28:	00000000 	.inst	0x00000000 ; undefined
   8cd2c:	00017c00 	.inst	0x00017c00 ; undefined
   8cd30:	00000000 	.inst	0x00000000 ; undefined
   8cd34:	08d2a900 	.inst	0x08d2a900 ; undefined
   8cd38:	07080200 	.inst	0x07080200 ; undefined
   8cd3c:	00088ab1 	.inst	0x00088ab1 ; undefined
   8cd40:	bb070402 	.inst	0xbb070402 ; undefined
   8cd44:	0200088a 	.inst	0x0200088a ; undefined
   8cd48:	8a6c0702 	bic	x2, x24, x12, lsr #1
   8cd4c:	01020008 	.inst	0x01020008 ; undefined
   8cd50:	088a4d08 	stllrb	w8, [x8]
   8cd54:	05080200 	.inst	0x05080200 ; undefined
   8cd58:	00088ae0 	.inst	0x00088ae0 ; undefined
   8cd5c:	69050403 	stgp	x3, x1, [x0, #160]
   8cd60:	0200746e 	.inst	0x0200746e ; undefined
   8cd64:	8aee0502 	bic	x2, x8, x14, ror #1
   8cd68:	01020008 	.inst	0x01020008 ; undefined
   8cd6c:	088a4f06 	stllrb	w6, [x24]
   8cd70:	08010200 	stxrb	w1, w0, [x16]
   8cd74:	00088a56 	.inst	0x00088a56 ; undefined
   8cd78:	088a8c04 	stlrb	w4, [x0]
   8cd7c:	06470100 	.inst	0x06470100 ; undefined
   8cd80:	0008ccdc 	.inst	0x0008ccdc ; undefined
   8cd84:	00000000 	.inst	0x00000000 ; undefined
   8cd88:	00000030 	.inst	0x00000030 ; undefined
   8cd8c:	00000000 	.inst	0x00000000 ; undefined
   8cd90:	00c09c01 	.inst	0x00c09c01 ; undefined
   8cd94:	73050000 	.inst	0x73050000 ; undefined
   8cd98:	01007274 	.inst	0x01007274 ; undefined
   8cd9c:	00c01d47 	.inst	0x00c01d47 ; undefined
   8cda0:	d11f0000 	sub	x0, x0, #0x7c0
   8cda4:	d11b0008 	sub	x8, x0, #0x6c0
   8cda8:	70060008 	adr	x8, 98dab <init_end+0x8dab>
   8cdac:	01007274 	.inst	0x01007274 ; undefined
   8cdb0:	00c00949 	.inst	0x00c00949 ; undefined
   8cdb4:	d15c0000 	sub	x0, x0, #0x700, lsl #12
   8cdb8:	d1580008 	sub	x8, x0, #0x600, lsl #12
   8cdbc:	f8070008 	stur	x8, [x0, #112]
   8cdc0:	000008cc 	.inst	0x000008cc ; undefined
   8cdc4:	c6000000 	.inst	0xc6000000 ; undefined
   8cdc8:	00000000 	.inst	0x00000000 ; undefined
   8cdcc:	00650808 	.inst	0x00650808 ; undefined
   8cdd0:	b8090000 	stur	w0, [x0, #144]
   8cdd4:	010008d3 	.inst	0x010008d3 ; undefined
   8cdd8:	cbac0d40 	.inst	0xcbac0d40 ; undefined
   8cddc:	00000008 	.inst	0x00000008 ; undefined
   8cde0:	00340000 	.inst	0x00340000 ; NYI
   8cde4:	00000000 	.inst	0x00000000 ; undefined
   8cde8:	9c010000 	ldr	q0, 8ede8 <uart_send_string+0x210c>
   8cdec:	00000118 	.inst	0x00000118 ; undefined
   8cdf0:	01006305 	.inst	0x01006305 ; undefined
   8cdf4:	00342a40 	.inst	0x00342a40 ; NYI
   8cdf8:	d1980000 	subg	x0, x0, #0x180, #0x0
   8cdfc:	d1920008 	subg	x8, x0, #0x120, #0x0
   8ce00:	c0070008 	.inst	0xc0070008 ; undefined
   8ce04:	000008cb 	.inst	0x000008cb ; undefined
   8ce08:	18000000 	ldr	w0, 8ce08 <uart_send_string+0x12c>
   8ce0c:	0a000001 	and	w1, w0, w0
   8ce10:	0008cbd4 	.inst	0x0008cbd4 ; undefined
   8ce14:	00000000 	.inst	0x00000000 ; undefined
   8ce18:	000002fb 	.inst	0x000002fb ; undefined
   8ce1c:	0251010b 	.inst	0x0251010b ; undefined
   8ce20:	00000083 	.inst	0x00000083 ; undefined
   8ce24:	08d3970c 	.inst	0x08d3970c ; undefined
   8ce28:	153e0100 	b	500d228 <img_end+0x4f4d228>
   8ce2c:	00000034 	.inst	0x00000034 ; undefined
   8ce30:	0008cb90 	.inst	0x0008cb90 ; undefined
   8ce34:	00000000 	.inst	0x00000000 ; undefined
   8ce38:	0000001c 	.inst	0x0000001c ; undefined
   8ce3c:	00000000 	.inst	0x00000000 ; undefined
   8ce40:	01489c01 	.inst	0x01489c01 ; undefined
   8ce44:	a4070000 	ld1rqb	{z0.b}, p0/z, [x0, x7]
   8ce48:	000008cb 	.inst	0x000008cb ; undefined
   8ce4c:	07000000 	.inst	0x07000000 ; undefined
   8ce50:	00000003 	.inst	0x00000003 ; undefined
   8ce54:	088a2e04 	stllrb	w4, [x16]
   8ce58:	06230100 	.inst	0x06230100 ; undefined
   8ce5c:	0008cbe0 	.inst	0x0008cbe0 ; undefined
   8ce60:	00000000 	.inst	0x00000000 ; undefined
   8ce64:	000000fc 	.inst	0x000000fc ; undefined
   8ce68:	00000000 	.inst	0x00000000 ; undefined
   8ce6c:	02fb9c01 	.inst	0x02fb9c01 ; undefined
   8ce70:	72060000 	ands	w0, w0, #0x4000000
   8ce74:	24010061 	cmphs	p1.b, p0/z, z3.b, z1.b
   8ce78:	00003410 	.inst	0x00003410 ; undefined
   8ce7c:	08d1ee00 	.inst	0x08d1ee00 ; undefined
   8ce80:	08d1e400 	.inst	0x08d1e400 ; undefined
   8ce84:	cbfc0d00 	.inst	0xcbfc0d00 ; undefined
   8ce88:	00000008 	.inst	0x00000008 ; undefined
   8ce8c:	03070000 	.inst	0x03070000 ; undefined
   8ce90:	01910000 	.inst	0x01910000 ; undefined
   8ce94:	010b0000 	.inst	0x010b0000 ; undefined
   8ce98:	00830250 	.inst	0x00830250 ; undefined
   8ce9c:	cc140d00 	.inst	0xcc140d00 ; undefined
   8cea0:	00000008 	.inst	0x00000008 ; undefined
   8cea4:	02fb0000 	.inst	0x02fb0000 ; undefined
   8cea8:	01a90000 	.inst	0x01a90000 ; undefined
   8ceac:	010b0000 	.inst	0x010b0000 ; undefined
   8ceb0:	00830250 	.inst	0x00830250 ; undefined
   8ceb4:	cc240d00 	.inst	0xcc240d00 ; undefined
   8ceb8:	00000008 	.inst	0x00000008 ; undefined
   8cebc:	02fb0000 	.inst	0x02fb0000 ; undefined
   8cec0:	01c00000 	.inst	0x01c00000 ; undefined
   8cec4:	010b0000 	.inst	0x010b0000 ; undefined
   8cec8:	00300151 	.inst	0x00300151 ; NYI
   8cecc:	08cc2c0d 	ldlarb	w13, [x0]
   8ced0:	00000000 	.inst	0x00000000 ; undefined
   8ced4:	00031300 	.inst	0x00031300 ; undefined
   8ced8:	0001d800 	.inst	0x0001d800 ; undefined
   8cedc:	50010b00 	adr	x0, 8f03e <uart_send_string+0x2362>
   8cee0:	00960802 	.inst	0x00960802 ; undefined
   8cee4:	08cc3c0d 	ldlarb	w13, [x0]
   8cee8:	00000000 	.inst	0x00000000 ; undefined
   8ceec:	0002fb00 	.inst	0x0002fb00 ; undefined
   8cef0:	0001f700 	.inst	0x0001f700 ; undefined
   8cef4:	50010b00 	adr	x0, 8f056 <uart_send_string+0x237a>
   8cef8:	0b008302 	.inst	0x0b008302 ; undefined
   8cefc:	0a035101 	and	w1, w8, w3, lsl #20
   8cf00:	0d00c000 	.inst	0x0d00c000 ; undefined
   8cf04:	0008cc44 	.inst	0x0008cc44 ; undefined
   8cf08:	00000000 	.inst	0x00000000 ; undefined
   8cf0c:	00000313 	.inst	0x00000313 ; undefined
   8cf10:	0000020f 	.inst	0x0000020f ; undefined
   8cf14:	0250010b 	.inst	0x0250010b ; undefined
   8cf18:	0d009608 	.inst	0x0d009608 ; undefined
   8cf1c:	0008cc50 	.inst	0x0008cc50 ; undefined
   8cf20:	00000000 	.inst	0x00000000 ; undefined
   8cf24:	000002fb 	.inst	0x000002fb ; undefined
   8cf28:	0000022c 	.inst	0x0000022c ; undefined
   8cf2c:	0250010b 	.inst	0x0250010b ; undefined
   8cf30:	010b0083 	.inst	0x010b0083 ; undefined
   8cf34:	00300151 	.inst	0x00300151 ; NYI
   8cf38:	08cc600d 	ldlarb	w13, [x0]
   8cf3c:	00000000 	.inst	0x00000000 ; undefined
   8cf40:	0002fb00 	.inst	0x0002fb00 ; undefined
   8cf44:	00024300 	.inst	0x00024300 ; undefined
   8cf48:	51010b00 	sub	w0, w24, #0x42
   8cf4c:	0d003101 	st3	{v1.b-v3.b}[4], [x8]
   8cf50:	0008cc74 	.inst	0x0008cc74 ; undefined
   8cf54:	00000000 	.inst	0x00000000 ; undefined
   8cf58:	000002fb 	.inst	0x000002fb ; undefined
   8cf5c:	00000260 	.inst	0x00000260 ; undefined
   8cf60:	0250010b 	.inst	0x0250010b ; undefined
   8cf64:	010b0084 	.inst	0x010b0084 ; undefined
   8cf68:	00300151 	.inst	0x00300151 ; NYI
   8cf6c:	08cc880d 	.inst	0x08cc880d ; undefined
   8cf70:	00000000 	.inst	0x00000000 ; undefined
   8cf74:	0002fb00 	.inst	0x0002fb00 ; undefined
   8cf78:	00027d00 	.inst	0x00027d00 ; undefined
   8cf7c:	50010b00 	adr	x0, 8f0de <uart_send_string+0x2402>
   8cf80:	0b008302 	.inst	0x0b008302 ; undefined
   8cf84:	30015101 	adr	x1, 8f9a5 <uart_send_string+0x2cc9>
   8cf88:	cc940d00 	.inst	0xcc940d00 ; undefined
   8cf8c:	00000008 	.inst	0x00000008 ; undefined
   8cf90:	02fb0000 	.inst	0x02fb0000 ; undefined
   8cf94:	029a0000 	.inst	0x029a0000 ; undefined
   8cf98:	010b0000 	.inst	0x010b0000 ; undefined
   8cf9c:	00840250 	.inst	0x00840250 ; undefined
   8cfa0:	0151010b 	.inst	0x0151010b ; undefined
   8cfa4:	a40d0030 	ld1rqb	{z16.b}, p0/z, [x1, x13]
   8cfa8:	000008cc 	.inst	0x000008cc ; undefined
   8cfac:	fb000000 	.inst	0xfb000000 ; undefined
   8cfb0:	b1000002 	adds	x2, x0, #0x0
   8cfb4:	0b000002 	add	w2, w0, w0
   8cfb8:	33015101 	bfxil	w1, w8, #1, #20
   8cfbc:	ccb40d00 	.inst	0xccb40d00 ; undefined
   8cfc0:	00000008 	.inst	0x00000008 ; undefined
   8cfc4:	02fb0000 	.inst	0x02fb0000 ; undefined
   8cfc8:	02c80000 	.inst	0x02c80000 ; undefined
   8cfcc:	010b0000 	.inst	0x010b0000 ; undefined
   8cfd0:	00300151 	.inst	0x00300151 ; NYI
   8cfd4:	08ccc40d 	.inst	0x08ccc40d ; undefined
   8cfd8:	00000000 	.inst	0x00000000 ; undefined
   8cfdc:	0002fb00 	.inst	0x0002fb00 ; undefined
   8cfe0:	0002e100 	.inst	0x0002e100 ; undefined
   8cfe4:	51010b00 	sub	w0, w24, #0x42
   8cfe8:	010e0a03 	.inst	0x010e0a03 ; undefined
   8cfec:	ccd00a00 	.inst	0xccd00a00 ; undefined
   8cff0:	00000008 	.inst	0x00000008 ; undefined
   8cff4:	02fb0000 	.inst	0x02fb0000 ; undefined
   8cff8:	010b0000 	.inst	0x010b0000 ; undefined
   8cffc:	00830250 	.inst	0x00830250 ; undefined
   8d000:	0151010b 	.inst	0x0151010b ; undefined
   8d004:	0e000033 	tbl	v19.8b, {v1.16b}, v0.8b
   8d008:	0008d3c8 	.inst	0x0008d3c8 ; undefined
   8d00c:	0008d3c8 	.inst	0x0008d3c8 ; undefined
   8d010:	0e064702 	.inst	0x0e064702 ; undefined
   8d014:	0008d3a6 	.inst	0x0008d3a6 ; undefined
   8d018:	0008d3a6 	.inst	0x0008d3a6 ; undefined
   8d01c:	0e0e4802 	.inst	0x0e0e4802 ; undefined
   8d020:	0008d3b2 	.inst	0x0008d3b2 ; undefined
   8d024:	0008d3b2 	.inst	0x0008d3b2 ; undefined
   8d028:	00064902 	.inst	0x00064902 ; undefined
   8d02c:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   8d030:	030b130e 	.inst	0x030b130e ; undefined
   8d034:	110e1b0e 	add	w14, w24, #0x386
   8d038:	10071201 	adr	x1, 9b278 <init_end+0xb278>
   8d03c:	02000017 	.inst	0x02000017 ; undefined
   8d040:	0b0b0024 	add	w4, w1, w11
   8d044:	0e030b3e 	.inst	0x0e030b3e ; undefined
   8d048:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
   8d04c:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
   8d050:	0008030b 	.inst	0x0008030b ; undefined
   8d054:	012e0400 	.inst	0x012e0400 ; undefined
   8d058:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
   8d05c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
   8d060:	19270b39 	.inst	0x19270b39 ; undefined
   8d064:	07120111 	.inst	0x07120111 ; undefined
   8d068:	42971840 	.inst	0x42971840 ; undefined
   8d06c:	00130119 	.inst	0x00130119 ; undefined
   8d070:	00050500 	.inst	0x00050500 ; undefined
   8d074:	0b3a0803 	add	w3, w0, w26, uxtb #2
   8d078:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8d07c:	17021349 	b	fffffffffc111da0 <physmem_map_num+0xfffc0595b0>
   8d080:	001742b7 	.inst	0x001742b7 ; undefined
   8d084:	00340600 	.inst	0x00340600 ; NYI
   8d088:	0b3a0803 	add	w3, w0, w26, uxtb #2
   8d08c:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8d090:	17021349 	b	fffffffffc111db4 <physmem_map_num+0xfffc0595c4>
   8d094:	001742b7 	.inst	0x001742b7 ; undefined
   8d098:	82890700 	.inst	0x82890700 ; undefined
   8d09c:	01110001 	.inst	0x01110001 ; undefined
   8d0a0:	00001331 	.inst	0x00001331 ; undefined
   8d0a4:	0b000f08 	add	w8, w24, w0, lsl #3
   8d0a8:	0013490b 	.inst	0x0013490b ; undefined
   8d0ac:	012e0900 	.inst	0x012e0900 ; undefined
   8d0b0:	0b3a0e03 	add	w3, w16, w26, uxtb #3
   8d0b4:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8d0b8:	01111927 	.inst	0x01111927 ; undefined
   8d0bc:	18400712 	ldr	w18, 10d19c <img_end+0x4d19c>
   8d0c0:	01194297 	.inst	0x01194297 ; undefined
   8d0c4:	0a000013 	and	w19, w0, w0
   8d0c8:	01018289 	.inst	0x01018289 ; undefined
   8d0cc:	13310111 	.inst	0x13310111 ; undefined
   8d0d0:	8a0b0000 	and	x0, x0, x11
   8d0d4:	02000182 	.inst	0x02000182 ; undefined
   8d0d8:	18429118 	ldr	w24, 1122f8 <img_end+0x522f8>
   8d0dc:	2e0c0000 	ext	v0.8b, v0.8b, v12.8b, #0
   8d0e0:	3a0e0301 	adcs	w1, w24, w14
   8d0e4:	390b3b0b 	strb	w11, [x24, #718]
   8d0e8:	4919270b 	.inst	0x4919270b ; undefined
   8d0ec:	12011113 	and	w19, w8, #0x8000000f
   8d0f0:	97184007 	bl	fffffffffc69d10c <physmem_map_num+0xfffc5e491c>
   8d0f4:	13011942 	sbfx	w2, w10, #1, #6
   8d0f8:	890d0000 	.inst	0x890d0000 ; undefined
   8d0fc:	11010182 	add	w2, w12, #0x40
   8d100:	01133101 	.inst	0x01133101 ; undefined
   8d104:	0e000013 	tbl	v19.8b, {v0.16b}, v0.8b
   8d108:	193f002e 	.inst	0x193f002e ; undefined
   8d10c:	0e6e193c 	.inst	0x0e6e193c ; undefined
   8d110:	0b3a0e03 	add	w3, w16, w26, uxtb #3
   8d114:	0b390b3b 	add	w27, w25, w25, uxtb #2
   8d118:	00000000 	.inst	0x00000000 ; undefined
   8d11c:	4c000202 	st4	{v2.16b-v5.16b}, [x16]
   8d120:	00000001 	.inst	0x00000001 ; undefined
   8d124:	5c000000 	ldr	d0, 8d124 <uart_send_string+0x448>
   8d128:	00000001 	.inst	0x00000001 ; undefined
   8d12c:	01000000 	.inst	0x01000000 ; undefined
   8d130:	015c5000 	.inst	0x015c5000 ; undefined
   8d134:	00000000 	.inst	0x00000000 ; undefined
   8d138:	017c0000 	.inst	0x017c0000 ; undefined
   8d13c:	00000000 	.inst	0x00000000 ; undefined
   8d140:	00040000 	.inst	0x00040000 ; undefined
   8d144:	9f5001f3 	.inst	0x9f5001f3 ; undefined
	...
   8d158:	00020201 	.inst	0x00020201 ; undefined
   8d15c:	0000015c 	.inst	0x0000015c ; undefined
   8d160:	00000000 	.inst	0x00000000 ; undefined
   8d164:	0000015c 	.inst	0x0000015c ; undefined
   8d168:	00000000 	.inst	0x00000000 ; undefined
   8d16c:	5c500001 	ldr	d1, 12d16c <img_end+0x6d16c>
   8d170:	00000001 	.inst	0x00000001 ; undefined
   8d174:	74000000 	.inst	0x74000000 ; undefined
   8d178:	00000001 	.inst	0x00000001 ; undefined
   8d17c:	01000000 	.inst	0x01000000 ; undefined
   8d180:	00006300 	.inst	0x00006300 ; undefined
	...
   8d198:	0000001c 	.inst	0x0000001c ; undefined
   8d19c:	00000000 	.inst	0x00000000 ; undefined
   8d1a0:	0000002c 	.inst	0x0000002c ; undefined
   8d1a4:	00000000 	.inst	0x00000000 ; undefined
   8d1a8:	2c500001 	ldnp	s1, s0, [x0, #128]
   8d1ac:	00000000 	.inst	0x00000000 ; undefined
   8d1b0:	48000000 	stxrh	w0, w0, [x0]
   8d1b4:	00000000 	.inst	0x00000000 ; undefined
   8d1b8:	01000000 	.inst	0x01000000 ; undefined
   8d1bc:	00486300 	.inst	0x00486300 ; undefined
   8d1c0:	00000000 	.inst	0x00000000 ; undefined
   8d1c4:	00500000 	.inst	0x00500000 ; undefined
   8d1c8:	00000000 	.inst	0x00000000 ; undefined
   8d1cc:	00040000 	.inst	0x00040000 ; undefined
   8d1d0:	9f5001f3 	.inst	0x9f5001f3 ; undefined
	...
   8d1e4:	02010100 	.inst	0x02010100 ; undefined
   8d1e8:	01000002 	.inst	0x01000002 ; undefined
   8d1ec:	006c0001 	.inst	0x006c0001 ; undefined
   8d1f0:	00000000 	.inst	0x00000000 ; undefined
   8d1f4:	006c0000 	.inst	0x006c0000 ; undefined
   8d1f8:	00000000 	.inst	0x00000000 ; undefined
   8d1fc:	00010000 	.inst	0x00010000 ; undefined
   8d200:	00006c50 	.inst	0x00006c50 ; undefined
   8d204:	00000000 	.inst	0x00000000 ; undefined
   8d208:	00006c00 	.inst	0x00006c00 ; undefined
   8d20c:	00000000 	.inst	0x00000000 ; undefined
   8d210:	70000700 	adr	x0, 8d2f3 <uart_send_string+0x617>
   8d214:	8fff0b00 	.inst	0x8fff0b00 ; undefined
   8d218:	006c9f1a 	.inst	0x006c9f1a ; undefined
   8d21c:	00000000 	.inst	0x00000000 ; undefined
   8d220:	00700000 	.inst	0x00700000 ; undefined
   8d224:	00000000 	.inst	0x00000000 ; undefined
   8d228:	000b0000 	.inst	0x000b0000 ; undefined
   8d22c:	ff0b0070 	.inst	0xff0b0070 ; undefined
   8d230:	000a1a8f 	.inst	0x000a1a8f ; undefined
   8d234:	709f2120 	adr	x0, fffffffffffcb65b <physmem_map_num+0xfffff12e6b>
   8d238:	00000000 	.inst	0x00000000 ; undefined
   8d23c:	70000000 	adr	x0, 8d23f <uart_send_string+0x563>
   8d240:	00000000 	.inst	0x00000000 ; undefined
   8d244:	07000000 	.inst	0x07000000 ; undefined
   8d248:	0a007000 	and	w0, w0, w0, lsl #28
   8d24c:	9f212000 	.inst	0x9f212000 ; undefined
   8d250:	00000070 	.inst	0x00000070 ; undefined
   8d254:	00000000 	.inst	0x00000000 ; undefined
   8d258:	00000080 	.inst	0x00000080 ; undefined
   8d25c:	00000000 	.inst	0x00000000 ; undefined
   8d260:	00700007 	.inst	0x00700007 ; undefined
   8d264:	21243c42 	.inst	0x21243c42 ; undefined
   8d268:	0000009f 	.inst	0x0000009f ; undefined
	...
   8d278:	00002c00 	.inst	0x00002c00 ; undefined
   8d27c:	0c000200 	st4	{v0.8b-v3.8b}, [x16]
   8d280:	080008cd 	stxrb	w0, w13, [x6]
   8d284:	00000000 	.inst	0x00000000 ; undefined
   8d288:	08cb9000 	.inst	0x08cb9000 ; undefined
   8d28c:	00000000 	.inst	0x00000000 ; undefined
   8d290:	00017c00 	.inst	0x00017c00 ; undefined
	...
   8d2a8:	0000ea00 	.inst	0x0000ea00 ; undefined
   8d2ac:	59000300 	stlurh	w0, [x24]
   8d2b0:	04000000 	add	z0.b, p0/m, z0.b, z0.b
   8d2b4:	0d0efb01 	.inst	0x0d0efb01 ; undefined
   8d2b8:	01010100 	.inst	0x01010100 ; undefined
   8d2bc:	00000001 	.inst	0x00000001 ; undefined
   8d2c0:	01000001 	.inst	0x01000001 ; undefined
   8d2c4:	6f68632f 	umlsl2	v15.4s, v25.8h, v8.h[2]
   8d2c8:	656b2f73 	fmls	z19.h, p3/m, z27.h, z11.h
   8d2cc:	6c656e72 	ldnp	d18, d27, [x19, #-432]
   8d2d0:	6372612f 	.inst	0x6372612f ; undefined
   8d2d4:	61612f68 	.inst	0x61612f68 ; undefined
   8d2d8:	36686372 	tbz	w18, #13, 8df44 <uart_send_string+0x1268>
   8d2dc:	6f622f34 	.inst	0x6f622f34 ; undefined
   8d2e0:	722f746f 	ands	w15, w3, #0xfffe7fff
   8d2e4:	69707361 	ldpsw	x1, x28, [x27, #-128]
   8d2e8:	65702f33 	fmls	z19.h, p3/m, z25.h, z16.h
   8d2ec:	68706972 	.inst	0x68706972 ; undefined
   8d2f0:	6c617265 	ldnp	d5, d28, [x19, #-496]
   8d2f4:	75000073 	.inst	0x75000073 ; undefined
   8d2f8:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
   8d2fc:	00010063 	.inst	0x00010063 ; undefined
   8d300:	72617500 	.inst	0x72617500 ; undefined
   8d304:	00682e74 	.inst	0x00682e74 ; undefined
   8d308:	00000001 	.inst	0x00000001 ; undefined
   8d30c:	09002a05 	.inst	0x09002a05 ; undefined
   8d310:	08cb9002 	.inst	0x08cb9002 ; undefined
   8d314:	00000000 	.inst	0x00000000 ; undefined
   8d318:	013d0300 	.inst	0x013d0300 ; undefined
   8d31c:	052e2c05 	tbx	z5.b, z0.b, z14.b
   8d320:	05010633 	orr	z19.b, z19.b, #0x3
   8d324:	2d053c50 	stp	s16, s15, [x2, #40]
   8d328:	01063006 	.inst	0x01063006 ; undefined
   8d32c:	4b060305 	sub	w5, w24, w6
   8d330:	05130505 	mov	z5.b, p3/z, #40
   8d334:	05010609 	orr	z9.b, z9.b, #0x1
   8d338:	03052008 	.inst	0x03052008 ; undefined
   8d33c:	01052206 	.inst	0x01052206 ; undefined
   8d340:	05204b06 	.inst	0x05204b06 ; undefined
   8d344:	5e03061c 	mov	b28, v16.b[1]
   8d348:	3d03052e 	str	b14, [x9, #193]
   8d34c:	06080514 	.inst	0x06080514 ; undefined
   8d350:	06030501 	.inst	0x06030501 ; undefined
   8d354:	2113134b 	.inst	0x2113134b ; undefined
   8d358:	064a0613 	.inst	0x064a0613 ; undefined
   8d35c:	4b2f4b22 	sub	w2, w25, w15, uxtw #2
   8d360:	594b3e2f 	.inst	0x594b3e2f ; undefined
   8d364:	4b4b3d59 	sub	w25, w10, w11, lsr #15
   8d368:	0601054c 	.inst	0x0601054c ; undefined
   8d36c:	0622053d 	.inst	0x0622053d ; undefined
   8d370:	063c0b03 	.inst	0x063c0b03 ; undefined
   8d374:	06030501 	.inst	0x06030501 ; undefined
   8d378:	0905134c 	.inst	0x0905134c ; undefined
   8d37c:	060a0501 	.inst	0x060a0501 ; undefined
   8d380:	20090501 	.inst	0x20090501 ; undefined
   8d384:	21060505 	.inst	0x21060505 ; undefined
   8d388:	06080521 	.inst	0x06080521 ; undefined
   8d38c:	01052001 	.inst	0x01052001 ; undefined
   8d390:	02022023 	.inst	0x02022023 ; undefined
   8d394:	65010100 	.inst	0x65010100 ; undefined
   8d398:	796c7261 	ldrh	w1, [x19, #5688]
   8d39c:	7261755f 	.inst	0x7261755f ; undefined
   8d3a0:	736c5f74 	.inst	0x736c5f74 ; undefined
   8d3a4:	61650072 	.inst	0x61650072 ; undefined
   8d3a8:	5f796c72 	.inst	0x5f796c72 ; undefined
   8d3ac:	33746567 	.inst	0x33746567 ; undefined
   8d3b0:	65640032 	fmla	z18.h, p0/m, z1.h, z4.h
   8d3b4:	0079616c 	.inst	0x0079616c ; undefined
   8d3b8:	6c726165 	ldnp	d5, d24, [x11, #-224]
   8d3bc:	61755f79 	.inst	0x61755f79 ; undefined
   8d3c0:	735f7472 	.inst	0x735f7472 ; undefined
   8d3c4:	00646e65 	.inst	0x00646e65 ; undefined
   8d3c8:	6c726165 	ldnp	d5, d24, [x11, #-224]
   8d3cc:	75705f79 	.inst	0x75705f79 ; undefined
   8d3d0:	00323374 	.inst	0x00323374 ; NYI
   8d3d4:	6f68632f 	umlsl2	v15.4s, v25.8h, v8.h[2]
   8d3d8:	656b2f73 	fmls	z19.h, p3/m, z27.h, z11.h
   8d3dc:	6c656e72 	ldnp	d18, d27, [x19, #-432]
   8d3e0:	6372612f 	.inst	0x6372612f ; undefined
   8d3e4:	61612f68 	.inst	0x61612f68 ; undefined
   8d3e8:	36686372 	tbz	w18, #13, 8e054 <uart_send_string+0x1378>
   8d3ec:	6f622f34 	.inst	0x6f622f34 ; undefined
   8d3f0:	722f746f 	ands	w15, w3, #0xfffe7fff
   8d3f4:	69707361 	ldpsw	x1, x28, [x27, #-128]
   8d3f8:	65702f33 	fmls	z19.h, p3/m, z25.h, z16.h
   8d3fc:	68706972 	.inst	0x68706972 ; undefined
   8d400:	6c617265 	ldnp	d5, d28, [x19, #-496]
   8d404:	61752f73 	.inst	0x61752f73 ; undefined
   8d408:	632e7472 	.inst	0x632e7472 ; undefined
   8d40c:	00000000 	.inst	0x00000000 ; undefined
   8d410:	00000010 	.inst	0x00000010 ; undefined
   8d414:	00000000 	.inst	0x00000000 ; undefined
   8d418:	00527a01 	.inst	0x00527a01 ; undefined
   8d41c:	011e7804 	.inst	0x011e7804 ; undefined
   8d420:	001f0c1b 	.inst	0x001f0c1b ; undefined
   8d424:	0000001c 	.word	0x0000001c
   8d428:	00000018 	.word	0x00000018
   8d42c:	fffff764 	.word	0xfffff764
   8d430:	0000001c 	.word	0x0000001c
   8d434:	100e4100 	.word	0x100e4100
   8d438:	019e029d 	.word	0x019e029d
   8d43c:	0eddde45 	.word	0x0eddde45
   8d440:	00000000 	.word	0x00000000
   8d444:	00000020 	.word	0x00000020
   8d448:	00000038 	.word	0x00000038
   8d44c:	fffff760 	.word	0xfffff760
   8d450:	00000034 	.word	0x00000034
   8d454:	200e4100 	.word	0x200e4100
   8d458:	039e049d 	.word	0x039e049d
   8d45c:	49029342 	.word	0x49029342
   8d460:	0ed3ddde 	.word	0x0ed3ddde
   8d464:	00000000 	.word	0x00000000
   8d468:	00000020 	.word	0x00000020
   8d46c:	0000005c 	.word	0x0000005c
   8d470:	fffff770 	.word	0xfffff770
   8d474:	000000fc 	.word	0x000000fc
   8d478:	200e4100 	.word	0x200e4100
   8d47c:	039e049d 	.word	0x039e049d
   8d480:	94029342 	.word	0x94029342
   8d484:	ddde7b01 	.word	0xddde7b01
   8d488:	000ed4d3 	.word	0x000ed4d3
   8d48c:	00000020 	.word	0x00000020
   8d490:	00000080 	.word	0x00000080
   8d494:	fffff848 	.word	0xfffff848
   8d498:	00000030 	.word	0x00000030
   8d49c:	200e4100 	.word	0x200e4100
   8d4a0:	039e049d 	.word	0x039e049d
   8d4a4:	48029342 	.word	0x48029342
   8d4a8:	0ed3ddde 	.word	0x0ed3ddde
   8d4ac:	00000000 	.word	0x00000000

Disassembly of section .text:

ffffff0000090000 <start_kernel>:
ffffff0000090000:	58000182 	ldr	x2, ffffff0000090030 <start_kernel+0x30>
ffffff0000090004:	91400842 	add	x2, x2, #0x2, lsl #12
ffffff0000090008:	9100005f 	mov	sp, x2
ffffff000009000c:	f81f8fe0 	str	x0, [sp, #-8]!
ffffff0000090010:	d2800002 	mov	x2, #0x0                   	// #0
ffffff0000090014:	d5182002 	msr	ttbr0_el1, x2
ffffff0000090018:	d5033fdf 	isb
ffffff000009001c:	94000473 	bl	ffffff00000911e8 <flush_tlb_all>
ffffff0000090020:	d2800003 	mov	x3, #0x0                   	// #0
ffffff0000090024:	d518d083 	msr	tpidr_el1, x3
ffffff0000090028:	f84087e0 	ldr	x0, [sp], #8
ffffff000009002c:	9400001b 	bl	ffffff0000090098 <main>
ffffff0000090030:	000b0670 	.word	0x000b0670
ffffff0000090034:	ffffff00 	.word	0xffffff00

ffffff0000090038 <lab2_test_kernel_vaddr>:
ffffff0000090038:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff000009003c:	910003fd 	mov	x29, sp
ffffff0000090040:	10000001 	adr	x1, ffffff0000090040 <lab2_test_kernel_vaddr+0x8>
ffffff0000090044:	92c02000 	mov	x0, #0xfffffeffffffffff    	// #-1099511627777
ffffff0000090048:	eb00003f 	cmp	x1, x0
ffffff000009004c:	54000109 	b.ls	ffffff000009006c <lab2_test_kernel_vaddr+0x34>  // b.plast
ffffff0000090050:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090054:	91000021 	add	x1, x1, #0x0
ffffff0000090058:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009005c:	91008000 	add	x0, x0, #0x20
ffffff0000090060:	940008d2 	bl	ffffff00000923a8 <printk>
ffffff0000090064:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000090068:	d65f03c0 	ret
ffffff000009006c:	90000104 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090070:	9100c084 	add	x4, x4, #0x30
ffffff0000090074:	52800243 	mov	w3, #0x12                  	// #18
ffffff0000090078:	90000102 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009007c:	91010042 	add	x2, x2, #0x40
ffffff0000090080:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090084:	91000021 	add	x1, x1, #0x0
ffffff0000090088:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009008c:	9101a000 	add	x0, x0, #0x68
ffffff0000090090:	940008c6 	bl	ffffff00000923a8 <printk>
ffffff0000090094:	17fffff4 	b	ffffff0000090064 <lab2_test_kernel_vaddr+0x2c>

ffffff0000090098 <main>:
ffffff0000090098:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff000009009c:	910003fd 	mov	x29, sp
ffffff00000900a0:	94000485 	bl	ffffff00000912b4 <uart_init>
ffffff00000900a4:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000900a8:	91024000 	add	x0, x0, #0x90
ffffff00000900ac:	940008bf 	bl	ffffff00000923a8 <printk>
ffffff00000900b0:	97ffffe2 	bl	ffffff0000090038 <lab2_test_kernel_vaddr>
ffffff00000900b4:	94000d1c 	bl	ffffff0000093524 <mm_init>
ffffff00000900b8:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000900bc:	9102e000 	add	x0, x0, #0xb8
ffffff00000900c0:	940008ba 	bl	ffffff00000923a8 <printk>
ffffff00000900c4:	94000c9b 	bl	ffffff0000093330 <lab2_test_kmalloc>
ffffff00000900c8:	940002c1 	bl	ffffff0000090bcc <lab2_test_page_table>
ffffff00000900cc:	14000000 	b	ffffff00000900cc <main+0x34>

ffffff00000900d0 <flush_dcache_area>:
ffffff00000900d0:	d53b0023 	mrs	x3, ctr_el0
ffffff00000900d4:	d503201f 	nop
ffffff00000900d8:	d3504c63 	ubfx	x3, x3, #16, #4
ffffff00000900dc:	d2800082 	mov	x2, #0x4                   	// #4
ffffff00000900e0:	9ac32042 	lsl	x2, x2, x3
ffffff00000900e4:	8b010001 	add	x1, x0, x1
ffffff00000900e8:	d1000443 	sub	x3, x2, #0x1
ffffff00000900ec:	8a230000 	bic	x0, x0, x3
ffffff00000900f0:	d50b7e20 	dc	civac, x0
ffffff00000900f4:	8b020000 	add	x0, x0, x2
ffffff00000900f8:	eb01001f 	cmp	x0, x1
ffffff00000900fc:	54ffffa3 	b.cc	ffffff00000900f0 <flush_dcache_area+0x20>  // b.lo, b.ul, b.last
ffffff0000090100:	d5033f9f 	dsb	sy
ffffff0000090104:	d65f03c0 	ret

ffffff0000090108 <put32>:
ffffff0000090108:	b9000001 	str	w1, [x0]
ffffff000009010c:	d65f03c0 	ret

ffffff0000090110 <get32>:
ffffff0000090110:	b9400000 	ldr	w0, [x0]
ffffff0000090114:	d65f03c0 	ret

ffffff0000090118 <put64>:
ffffff0000090118:	f9000001 	str	x1, [x0]
ffffff000009011c:	d65f03c0 	ret

ffffff0000090120 <get64>:
ffffff0000090120:	f9400000 	ldr	x0, [x0]
ffffff0000090124:	d65f03c0 	ret
	...

ffffff0000090130 <memcpy>:
ffffff0000090130:	f9800020 	prfm	pldl1keep, [x1]
ffffff0000090134:	8b020024 	add	x4, x1, x2
ffffff0000090138:	8b020005 	add	x5, x0, x2
ffffff000009013c:	f100405f 	cmp	x2, #0x10
ffffff0000090140:	54000209 	b.ls	ffffff0000090180 <memcpy+0x50>  // b.plast
ffffff0000090144:	f101805f 	cmp	x2, #0x60
ffffff0000090148:	54000648 	b.hi	ffffff0000090210 <memcpy+0xe0>  // b.pmore
ffffff000009014c:	d1000449 	sub	x9, x2, #0x1
ffffff0000090150:	a9401c26 	ldp	x6, x7, [x1]
ffffff0000090154:	37300469 	tbnz	w9, #6, ffffff00000901e0 <memcpy+0xb0>
ffffff0000090158:	a97f348c 	ldp	x12, x13, [x4, #-16]
ffffff000009015c:	362800a9 	tbz	w9, #5, ffffff0000090170 <memcpy+0x40>
ffffff0000090160:	a9412428 	ldp	x8, x9, [x1, #16]
ffffff0000090164:	a97e2c8a 	ldp	x10, x11, [x4, #-32]
ffffff0000090168:	a9012408 	stp	x8, x9, [x0, #16]
ffffff000009016c:	a93e2caa 	stp	x10, x11, [x5, #-32]
ffffff0000090170:	a9001c06 	stp	x6, x7, [x0]
ffffff0000090174:	a93f34ac 	stp	x12, x13, [x5, #-16]
ffffff0000090178:	d65f03c0 	ret
ffffff000009017c:	d503201f 	nop
ffffff0000090180:	f100205f 	cmp	x2, #0x8
ffffff0000090184:	540000e3 	b.cc	ffffff00000901a0 <memcpy+0x70>  // b.lo, b.ul, b.last
ffffff0000090188:	f9400026 	ldr	x6, [x1]
ffffff000009018c:	f85f8087 	ldur	x7, [x4, #-8]
ffffff0000090190:	f9000006 	str	x6, [x0]
ffffff0000090194:	f81f80a7 	stur	x7, [x5, #-8]
ffffff0000090198:	d65f03c0 	ret
ffffff000009019c:	d503201f 	nop
ffffff00000901a0:	361000c2 	tbz	w2, #2, ffffff00000901b8 <memcpy+0x88>
ffffff00000901a4:	b9400026 	ldr	w6, [x1]
ffffff00000901a8:	b85fc087 	ldur	w7, [x4, #-4]
ffffff00000901ac:	b9000006 	str	w6, [x0]
ffffff00000901b0:	b81fc0a7 	stur	w7, [x5, #-4]
ffffff00000901b4:	d65f03c0 	ret
ffffff00000901b8:	b4000102 	cbz	x2, ffffff00000901d8 <memcpy+0xa8>
ffffff00000901bc:	d341fc49 	lsr	x9, x2, #1
ffffff00000901c0:	39400026 	ldrb	w6, [x1]
ffffff00000901c4:	385ff087 	ldurb	w7, [x4, #-1]
ffffff00000901c8:	38696828 	ldrb	w8, [x1, x9]
ffffff00000901cc:	39000006 	strb	w6, [x0]
ffffff00000901d0:	38296808 	strb	w8, [x0, x9]
ffffff00000901d4:	381ff0a7 	sturb	w7, [x5, #-1]
ffffff00000901d8:	d65f03c0 	ret
ffffff00000901dc:	d503201f 	nop
ffffff00000901e0:	a9412428 	ldp	x8, x9, [x1, #16]
ffffff00000901e4:	a9422c2a 	ldp	x10, x11, [x1, #32]
ffffff00000901e8:	a943342c 	ldp	x12, x13, [x1, #48]
ffffff00000901ec:	a97e0881 	ldp	x1, x2, [x4, #-32]
ffffff00000901f0:	a97f0c84 	ldp	x4, x3, [x4, #-16]
ffffff00000901f4:	a9001c06 	stp	x6, x7, [x0]
ffffff00000901f8:	a9012408 	stp	x8, x9, [x0, #16]
ffffff00000901fc:	a9022c0a 	stp	x10, x11, [x0, #32]
ffffff0000090200:	a903340c 	stp	x12, x13, [x0, #48]
ffffff0000090204:	a93e08a1 	stp	x1, x2, [x5, #-32]
ffffff0000090208:	a93f0ca4 	stp	x4, x3, [x5, #-16]
ffffff000009020c:	d65f03c0 	ret
ffffff0000090210:	92400c09 	and	x9, x0, #0xf
ffffff0000090214:	927cec03 	and	x3, x0, #0xfffffffffffffff0
ffffff0000090218:	a940342c 	ldp	x12, x13, [x1]
ffffff000009021c:	cb090021 	sub	x1, x1, x9
ffffff0000090220:	8b090042 	add	x2, x2, x9
ffffff0000090224:	a9411c26 	ldp	x6, x7, [x1, #16]
ffffff0000090228:	a900340c 	stp	x12, x13, [x0]
ffffff000009022c:	a9422428 	ldp	x8, x9, [x1, #32]
ffffff0000090230:	a9432c2a 	ldp	x10, x11, [x1, #48]
ffffff0000090234:	a9c4342c 	ldp	x12, x13, [x1, #64]!
ffffff0000090238:	f1024042 	subs	x2, x2, #0x90
ffffff000009023c:	54000169 	b.ls	ffffff0000090268 <memcpy+0x138>  // b.plast
ffffff0000090240:	a9011c66 	stp	x6, x7, [x3, #16]
ffffff0000090244:	a9411c26 	ldp	x6, x7, [x1, #16]
ffffff0000090248:	a9022468 	stp	x8, x9, [x3, #32]
ffffff000009024c:	a9422428 	ldp	x8, x9, [x1, #32]
ffffff0000090250:	a9032c6a 	stp	x10, x11, [x3, #48]
ffffff0000090254:	a9432c2a 	ldp	x10, x11, [x1, #48]
ffffff0000090258:	a984346c 	stp	x12, x13, [x3, #64]!
ffffff000009025c:	a9c4342c 	ldp	x12, x13, [x1, #64]!
ffffff0000090260:	f1010042 	subs	x2, x2, #0x40
ffffff0000090264:	54fffee8 	b.hi	ffffff0000090240 <memcpy+0x110>  // b.pmore
ffffff0000090268:	a97c0881 	ldp	x1, x2, [x4, #-64]
ffffff000009026c:	a9011c66 	stp	x6, x7, [x3, #16]
ffffff0000090270:	a97d1c86 	ldp	x6, x7, [x4, #-48]
ffffff0000090274:	a9022468 	stp	x8, x9, [x3, #32]
ffffff0000090278:	a97e2488 	ldp	x8, x9, [x4, #-32]
ffffff000009027c:	a9032c6a 	stp	x10, x11, [x3, #48]
ffffff0000090280:	a97f2c8a 	ldp	x10, x11, [x4, #-16]
ffffff0000090284:	a904346c 	stp	x12, x13, [x3, #64]
ffffff0000090288:	a93c08a1 	stp	x1, x2, [x5, #-64]
ffffff000009028c:	a93d1ca6 	stp	x6, x7, [x5, #-48]
ffffff0000090290:	a93e24a8 	stp	x8, x9, [x5, #-32]
ffffff0000090294:	a93f2caa 	stp	x10, x11, [x5, #-16]
ffffff0000090298:	d65f03c0 	ret

ffffff000009029c <memmove>:
ffffff000009029c:	cb010005 	sub	x5, x0, x1
ffffff00000902a0:	f101805f 	cmp	x2, #0x60
ffffff00000902a4:	fa4280a2 	ccmp	x5, x2, #0x2, hi  // hi = pmore
ffffff00000902a8:	54fff442 	b.cs	ffffff0000090130 <memcpy>  // b.hs, b.nlast
ffffff00000902ac:	b40004c5 	cbz	x5, ffffff0000090344 <memmove+0xa8>
ffffff00000902b0:	8b020004 	add	x4, x0, x2
ffffff00000902b4:	8b020023 	add	x3, x1, x2
ffffff00000902b8:	92400c85 	and	x5, x4, #0xf
ffffff00000902bc:	a97f346c 	ldp	x12, x13, [x3, #-16]
ffffff00000902c0:	cb050063 	sub	x3, x3, x5
ffffff00000902c4:	cb050042 	sub	x2, x2, x5
ffffff00000902c8:	a97f1c66 	ldp	x6, x7, [x3, #-16]
ffffff00000902cc:	a93f348c 	stp	x12, x13, [x4, #-16]
ffffff00000902d0:	a97e2468 	ldp	x8, x9, [x3, #-32]
ffffff00000902d4:	a97d2c6a 	ldp	x10, x11, [x3, #-48]
ffffff00000902d8:	a9fc346c 	ldp	x12, x13, [x3, #-64]!
ffffff00000902dc:	cb050084 	sub	x4, x4, x5
ffffff00000902e0:	f1020042 	subs	x2, x2, #0x80
ffffff00000902e4:	54000189 	b.ls	ffffff0000090314 <memmove+0x78>  // b.plast
ffffff00000902e8:	d503201f 	nop
ffffff00000902ec:	a93f1c86 	stp	x6, x7, [x4, #-16]
ffffff00000902f0:	a97f1c66 	ldp	x6, x7, [x3, #-16]
ffffff00000902f4:	a93e2488 	stp	x8, x9, [x4, #-32]
ffffff00000902f8:	a97e2468 	ldp	x8, x9, [x3, #-32]
ffffff00000902fc:	a93d2c8a 	stp	x10, x11, [x4, #-48]
ffffff0000090300:	a97d2c6a 	ldp	x10, x11, [x3, #-48]
ffffff0000090304:	a9bc348c 	stp	x12, x13, [x4, #-64]!
ffffff0000090308:	a9fc346c 	ldp	x12, x13, [x3, #-64]!
ffffff000009030c:	f1010042 	subs	x2, x2, #0x40
ffffff0000090310:	54fffee8 	b.hi	ffffff00000902ec <memmove+0x50>  // b.pmore
ffffff0000090314:	a9431422 	ldp	x2, x5, [x1, #48]
ffffff0000090318:	a93f1c86 	stp	x6, x7, [x4, #-16]
ffffff000009031c:	a9421c26 	ldp	x6, x7, [x1, #32]
ffffff0000090320:	a93e2488 	stp	x8, x9, [x4, #-32]
ffffff0000090324:	a9412428 	ldp	x8, x9, [x1, #16]
ffffff0000090328:	a93d2c8a 	stp	x10, x11, [x4, #-48]
ffffff000009032c:	a9402c2a 	ldp	x10, x11, [x1]
ffffff0000090330:	a93c348c 	stp	x12, x13, [x4, #-64]
ffffff0000090334:	a9031402 	stp	x2, x5, [x0, #48]
ffffff0000090338:	a9021c06 	stp	x6, x7, [x0, #32]
ffffff000009033c:	a9012408 	stp	x8, x9, [x0, #16]
ffffff0000090340:	a9002c0a 	stp	x10, x11, [x0]
ffffff0000090344:	d65f03c0 	ret

ffffff0000090348 <memset>:
ffffff0000090348:	12001c21 	and	w1, w1, #0xff
ffffff000009034c:	d2800003 	mov	x3, #0x0                   	// #0
ffffff0000090350:	eb02007f 	cmp	x3, x2
ffffff0000090354:	54000082 	b.cs	ffffff0000090364 <memset+0x1c>  // b.hs, b.nlast
ffffff0000090358:	38236801 	strb	w1, [x0, x3]
ffffff000009035c:	91000463 	add	x3, x3, #0x1
ffffff0000090360:	17fffffc 	b	ffffff0000090350 <memset+0x8>
ffffff0000090364:	d65f03c0 	ret

ffffff0000090368 <set_pte_flags>:
ffffff0000090368:	35000342 	cbnz	w2, ffffff00000903d0 <set_pte_flags+0x68>
ffffff000009036c:	36080481 	tbz	w1, #1, ffffff00000903fc <set_pte_flags+0x94>
ffffff0000090370:	39400002 	ldrb	w2, [x0]
ffffff0000090374:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000090378:	331a0462 	bfi	w2, w3, #6, #2
ffffff000009037c:	39000002 	strb	w2, [x0]
ffffff0000090380:	36100461 	tbz	w1, #2, ffffff000009040c <set_pte_flags+0xa4>
ffffff0000090384:	39401802 	ldrb	w2, [x0, #6]
ffffff0000090388:	12197842 	and	w2, w2, #0xffffffbf
ffffff000009038c:	39001802 	strb	w2, [x0, #6]
ffffff0000090390:	39401802 	ldrb	w2, [x0, #6]
ffffff0000090394:	321b0042 	orr	w2, w2, #0x20
ffffff0000090398:	39001802 	strb	w2, [x0, #6]
ffffff000009039c:	39400402 	ldrb	w2, [x0, #1]
ffffff00000903a0:	32000c42 	orr	w2, w2, #0xf
ffffff00000903a4:	39000402 	strb	w2, [x0, #1]
ffffff00000903a8:	361803a1 	tbz	w1, #3, ffffff000009041c <set_pte_flags+0xb4>
ffffff00000903ac:	39400001 	ldrb	w1, [x0]
ffffff00000903b0:	52800022 	mov	w2, #0x1                   	// #1
ffffff00000903b4:	331e0841 	bfi	w1, w2, #2, #3
ffffff00000903b8:	39000001 	strb	w1, [x0]
ffffff00000903bc:	39400401 	ldrb	w1, [x0, #1]
ffffff00000903c0:	121e7421 	and	w1, w1, #0xfffffffc
ffffff00000903c4:	39000401 	strb	w1, [x0, #1]
ffffff00000903c8:	52800000 	mov	w0, #0x0                   	// #0
ffffff00000903cc:	d65f03c0 	ret
ffffff00000903d0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000903d4:	910003fd 	mov	x29, sp
ffffff00000903d8:	90000103 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000903dc:	91038063 	add	x3, x3, #0xe0
ffffff00000903e0:	528003c2 	mov	w2, #0x1e                  	// #30
ffffff00000903e4:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000903e8:	91094021 	add	x1, x1, #0x250
ffffff00000903ec:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000903f0:	9103e000 	add	x0, x0, #0xf8
ffffff00000903f4:	940007ed 	bl	ffffff00000923a8 <printk>
ffffff00000903f8:	14000000 	b	ffffff00000903f8 <set_pte_flags+0x90>
ffffff00000903fc:	39400002 	ldrb	w2, [x0]
ffffff0000090400:	321a6442 	orr	w2, w2, #0xffffffc0
ffffff0000090404:	39000002 	strb	w2, [x0]
ffffff0000090408:	17ffffde 	b	ffffff0000090380 <set_pte_flags+0x18>
ffffff000009040c:	39401802 	ldrb	w2, [x0, #6]
ffffff0000090410:	321a0042 	orr	w2, w2, #0x40
ffffff0000090414:	39001802 	strb	w2, [x0, #6]
ffffff0000090418:	17ffffde 	b	ffffff0000090390 <set_pte_flags+0x28>
ffffff000009041c:	362000c1 	tbz	w1, #4, ffffff0000090434 <set_pte_flags+0xcc>
ffffff0000090420:	39400001 	ldrb	w1, [x0]
ffffff0000090424:	52800042 	mov	w2, #0x2                   	// #2
ffffff0000090428:	331e0841 	bfi	w1, w2, #2, #3
ffffff000009042c:	39000001 	strb	w1, [x0]
ffffff0000090430:	17ffffe6 	b	ffffff00000903c8 <set_pte_flags+0x60>
ffffff0000090434:	39400001 	ldrb	w1, [x0]
ffffff0000090438:	121b7021 	and	w1, w1, #0xffffffe3
ffffff000009043c:	39000001 	strb	w1, [x0]
ffffff0000090440:	17ffffe2 	b	ffffff00000903c8 <set_pte_flags+0x60>

ffffff0000090444 <get_next_ptp>:
ffffff0000090444:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
ffffff0000090448:	910003fd 	mov	x29, sp
ffffff000009044c:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff0000090450:	aa0003f5 	mov	x21, x0
ffffff0000090454:	b4000980 	cbz	x0, ffffff0000090584 <get_next_ptp+0x140>
ffffff0000090458:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff000009045c:	a90363f7 	stp	x23, x24, [sp, #48]
ffffff0000090460:	aa0303f8 	mov	x24, x3
ffffff0000090464:	aa0403f7 	mov	x23, x4
ffffff0000090468:	12001ca5 	and	w5, w5, #0xff
ffffff000009046c:	7100083f 	cmp	w1, #0x2
ffffff0000090470:	540005e0 	b.eq	ffffff000009052c <get_next_ptp+0xe8>  // b.none
ffffff0000090474:	540000c8 	b.hi	ffffff000009048c <get_next_ptp+0x48>  // b.pmore
ffffff0000090478:	34000121 	cbz	w1, ffffff000009049c <get_next_ptp+0x58>
ffffff000009047c:	7100043f 	cmp	w1, #0x1
ffffff0000090480:	540005a1 	b.ne	ffffff0000090534 <get_next_ptp+0xf0>  // b.any
ffffff0000090484:	d35e9853 	ubfx	x19, x2, #30, #9
ffffff0000090488:	14000006 	b	ffffff00000904a0 <get_next_ptp+0x5c>
ffffff000009048c:	71000c3f 	cmp	w1, #0x3
ffffff0000090490:	54000521 	b.ne	ffffff0000090534 <get_next_ptp+0xf0>  // b.any
ffffff0000090494:	530c5053 	ubfx	w19, w2, #12, #9
ffffff0000090498:	14000002 	b	ffffff00000904a0 <get_next_ptp+0x5c>
ffffff000009049c:	d367bc53 	ubfx	x19, x2, #39, #9
ffffff00000904a0:	2a1303e0 	mov	w0, w19
ffffff00000904a4:	d37d2276 	ubfiz	x22, x19, #3, #9
ffffff00000904a8:	8b1602b6 	add	x22, x21, x22
ffffff00000904ac:	f8607aa0 	ldr	x0, [x21, x0, lsl #3]
ffffff00000904b0:	37000200 	tbnz	w0, #0, ffffff00000904f0 <get_next_ptp+0xac>
ffffff00000904b4:	340006c5 	cbz	w5, ffffff000009058c <get_next_ptp+0x148>
ffffff00000904b8:	52800000 	mov	w0, #0x0                   	// #0
ffffff00000904bc:	94000b51 	bl	ffffff0000093200 <get_pages>
ffffff00000904c0:	aa0003f4 	mov	x20, x0
ffffff00000904c4:	b40004c0 	cbz	x0, ffffff000009055c <get_next_ptp+0x118>
ffffff00000904c8:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff00000904cc:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000904d0:	97ffff9e 	bl	ffffff0000090348 <memset>
ffffff00000904d4:	d2c02000 	mov	x0, #0x10000000000         	// #1099511627776
ffffff00000904d8:	8b000280 	add	x0, x20, x0
ffffff00000904dc:	d2800061 	mov	x1, #0x3                   	// #3
ffffff00000904e0:	d34cbc00 	ubfx	x0, x0, #12, #36
ffffff00000904e4:	b3748c01 	bfi	x1, x0, #12, #36
ffffff00000904e8:	2a1303e0 	mov	w0, w19
ffffff00000904ec:	f8207aa1 	str	x1, [x21, x0, lsl #3]
ffffff00000904f0:	2a1303f3 	mov	w19, w19
ffffff00000904f4:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
ffffff00000904f8:	92748c00 	and	x0, x0, #0xfffffffff000
ffffff00000904fc:	b2585fe1 	mov	x1, #0xffffff0000000000    	// #-1099511627776
ffffff0000090500:	8b010000 	add	x0, x0, x1
ffffff0000090504:	f9000300 	str	x0, [x24]
ffffff0000090508:	f90002f6 	str	x22, [x23]
ffffff000009050c:	f8737aa0 	ldr	x0, [x21, x19, lsl #3]
ffffff0000090510:	36080460 	tbz	w0, #1, ffffff000009059c <get_next_ptp+0x158>
ffffff0000090514:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090518:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff000009051c:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff0000090520:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000090524:	a8c47bfd 	ldp	x29, x30, [sp], #64
ffffff0000090528:	d65f03c0 	ret
ffffff000009052c:	53157453 	ubfx	w19, w2, #21, #9
ffffff0000090530:	17ffffdc 	b	ffffff00000904a0 <get_next_ptp+0x5c>
ffffff0000090534:	90000103 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090538:	91046063 	add	x3, x3, #0x118
ffffff000009053c:	52800da2 	mov	w2, #0x6d                  	// #109
ffffff0000090540:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090544:	91094021 	add	x1, x1, #0x250
ffffff0000090548:	91004021 	add	x1, x1, #0x10
ffffff000009054c:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090550:	9103e000 	add	x0, x0, #0xf8
ffffff0000090554:	94000795 	bl	ffffff00000923a8 <printk>
ffffff0000090558:	14000000 	b	ffffff0000090558 <get_next_ptp+0x114>
ffffff000009055c:	90000103 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090560:	91048063 	add	x3, x3, #0x120
ffffff0000090564:	52800fa2 	mov	w2, #0x7d                  	// #125
ffffff0000090568:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009056c:	91094021 	add	x1, x1, #0x250
ffffff0000090570:	91004021 	add	x1, x1, #0x10
ffffff0000090574:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090578:	9103e000 	add	x0, x0, #0xf8
ffffff000009057c:	9400078b 	bl	ffffff00000923a8 <printk>
ffffff0000090580:	14000000 	b	ffffff0000090580 <get_next_ptp+0x13c>
ffffff0000090584:	12801940 	mov	w0, #0xffffff35            	// #-203
ffffff0000090588:	17ffffe6 	b	ffffff0000090520 <get_next_ptp+0xdc>
ffffff000009058c:	12801940 	mov	w0, #0xffffff35            	// #-203
ffffff0000090590:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000090594:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff0000090598:	17ffffe2 	b	ffffff0000090520 <get_next_ptp+0xdc>
ffffff000009059c:	52800020 	mov	w0, #0x1                   	// #1
ffffff00000905a0:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff00000905a4:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff00000905a8:	17ffffde 	b	ffffff0000090520 <get_next_ptp+0xdc>

ffffff00000905ac <set_page_table>:
ffffff00000905ac:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000905b0:	910003fd 	mov	x29, sp
ffffff00000905b4:	9400030a 	bl	ffffff00000911dc <set_ttbr0_el1>
ffffff00000905b8:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff00000905bc:	d65f03c0 	ret

ffffff00000905c0 <free_page_table>:
ffffff00000905c0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
ffffff00000905c4:	910003fd 	mov	x29, sp
ffffff00000905c8:	b40000e0 	cbz	x0, ffffff00000905e4 <free_page_table+0x24>
ffffff00000905cc:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000905d0:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000905d4:	a90363f7 	stp	x23, x24, [sp, #48]
ffffff00000905d8:	aa0003f7 	mov	x23, x0
ffffff00000905dc:	52800018 	mov	w24, #0x0                   	// #0
ffffff00000905e0:	14000029 	b	ffffff0000090684 <free_page_table+0xc4>
ffffff00000905e4:	90000102 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000905e8:	91094042 	add	x2, x2, #0x250
ffffff00000905ec:	91008042 	add	x2, x2, #0x20
ffffff00000905f0:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000905f4:	9104c021 	add	x1, x1, #0x130
ffffff00000905f8:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000905fc:	91058000 	add	x0, x0, #0x160
ffffff0000090600:	9400076a 	bl	ffffff00000923a8 <printk>
ffffff0000090604:	14000031 	b	ffffff00000906c8 <free_page_table+0x108>
ffffff0000090608:	11000673 	add	w19, w19, #0x1
ffffff000009060c:	7107fe7f 	cmp	w19, #0x1ff
ffffff0000090610:	54000168 	b.hi	ffffff000009063c <free_page_table+0x7c>  // b.pmore
ffffff0000090614:	f873da80 	ldr	x0, [x20, w19, sxtw #3]
ffffff0000090618:	92400400 	and	x0, x0, #0x3
ffffff000009061c:	f1000c1f 	cmp	x0, #0x3
ffffff0000090620:	54ffff41 	b.ne	ffffff0000090608 <free_page_table+0x48>  // b.any
ffffff0000090624:	f873da80 	ldr	x0, [x20, w19, sxtw #3]
ffffff0000090628:	92748c00 	and	x0, x0, #0xfffffffff000
ffffff000009062c:	b2585fe1 	mov	x1, #0xffffff0000000000    	// #-1099511627776
ffffff0000090630:	8b010000 	add	x0, x0, x1
ffffff0000090634:	94000b37 	bl	ffffff0000093310 <free_pages>
ffffff0000090638:	17fffff4 	b	ffffff0000090608 <free_page_table+0x48>
ffffff000009063c:	aa1403e0 	mov	x0, x20
ffffff0000090640:	94000b34 	bl	ffffff0000093310 <free_pages>
ffffff0000090644:	110006b5 	add	w21, w21, #0x1
ffffff0000090648:	7107febf 	cmp	w21, #0x1ff
ffffff000009064c:	54000168 	b.hi	ffffff0000090678 <free_page_table+0xb8>  // b.pmore
ffffff0000090650:	f875dac0 	ldr	x0, [x22, w21, sxtw #3]
ffffff0000090654:	92400400 	and	x0, x0, #0x3
ffffff0000090658:	f1000c1f 	cmp	x0, #0x3
ffffff000009065c:	54ffff41 	b.ne	ffffff0000090644 <free_page_table+0x84>  // b.any
ffffff0000090660:	f875dad4 	ldr	x20, [x22, w21, sxtw #3]
ffffff0000090664:	92748e94 	and	x20, x20, #0xfffffffff000
ffffff0000090668:	b2585fe0 	mov	x0, #0xffffff0000000000    	// #-1099511627776
ffffff000009066c:	8b000294 	add	x20, x20, x0
ffffff0000090670:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090674:	17ffffe6 	b	ffffff000009060c <free_page_table+0x4c>
ffffff0000090678:	aa1603e0 	mov	x0, x22
ffffff000009067c:	94000b25 	bl	ffffff0000093310 <free_pages>
ffffff0000090680:	11000718 	add	w24, w24, #0x1
ffffff0000090684:	7107ff1f 	cmp	w24, #0x1ff
ffffff0000090688:	54000168 	b.hi	ffffff00000906b4 <free_page_table+0xf4>  // b.pmore
ffffff000009068c:	f878dae0 	ldr	x0, [x23, w24, sxtw #3]
ffffff0000090690:	92400400 	and	x0, x0, #0x3
ffffff0000090694:	f1000c1f 	cmp	x0, #0x3
ffffff0000090698:	54ffff41 	b.ne	ffffff0000090680 <free_page_table+0xc0>  // b.any
ffffff000009069c:	f878daf6 	ldr	x22, [x23, w24, sxtw #3]
ffffff00000906a0:	92748ed6 	and	x22, x22, #0xfffffffff000
ffffff00000906a4:	b2585fe0 	mov	x0, #0xffffff0000000000    	// #-1099511627776
ffffff00000906a8:	8b0002d6 	add	x22, x22, x0
ffffff00000906ac:	52800015 	mov	w21, #0x0                   	// #0
ffffff00000906b0:	17ffffe6 	b	ffffff0000090648 <free_page_table+0x88>
ffffff00000906b4:	aa1703e0 	mov	x0, x23
ffffff00000906b8:	94000b16 	bl	ffffff0000093310 <free_pages>
ffffff00000906bc:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff00000906c0:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff00000906c4:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff00000906c8:	a8c47bfd 	ldp	x29, x30, [sp], #64
ffffff00000906cc:	d65f03c0 	ret

ffffff00000906d0 <query_in_pgtbl>:
ffffff00000906d0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
ffffff00000906d4:	910003fd 	mov	x29, sp
ffffff00000906d8:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000906dc:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000906e0:	aa0103f4 	mov	x20, x1
ffffff00000906e4:	aa0203f5 	mov	x21, x2
ffffff00000906e8:	aa0303f6 	mov	x22, x3
ffffff00000906ec:	52800013 	mov	w19, #0x0                   	// #0
ffffff00000906f0:	14000005 	b	ffffff0000090704 <query_in_pgtbl+0x34>
ffffff00000906f4:	71000a7f 	cmp	w19, #0x2
ffffff00000906f8:	54000340 	b.eq	ffffff0000090760 <query_in_pgtbl+0x90>  // b.none
ffffff00000906fc:	11000673 	add	w19, w19, #0x1
ffffff0000090700:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090704:	71000e7f 	cmp	w19, #0x3
ffffff0000090708:	540003ec 	b.gt	ffffff0000090784 <query_in_pgtbl+0xb4>
ffffff000009070c:	52800005 	mov	w5, #0x0                   	// #0
ffffff0000090710:	9100c3e4 	add	x4, sp, #0x30
ffffff0000090714:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090718:	aa1403e2 	mov	x2, x20
ffffff000009071c:	2a1303e1 	mov	w1, w19
ffffff0000090720:	97ffff49 	bl	ffffff0000090444 <get_next_ptp>
ffffff0000090724:	31032c1f 	cmn	w0, #0xcb
ffffff0000090728:	540003e0 	b.eq	ffffff00000907a4 <query_in_pgtbl+0xd4>  // b.none
ffffff000009072c:	7100041f 	cmp	w0, #0x1
ffffff0000090730:	54fffe61 	b.ne	ffffff00000906fc <query_in_pgtbl+0x2c>  // b.any
ffffff0000090734:	7100067f 	cmp	w19, #0x1
ffffff0000090738:	54fffde1 	b.ne	ffffff00000906f4 <query_in_pgtbl+0x24>  // b.any
ffffff000009073c:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090740:	f90002c0 	str	x0, [x22]
ffffff0000090744:	f9400000 	ldr	x0, [x0]
ffffff0000090748:	92624400 	and	x0, x0, #0xffffc0000000
ffffff000009074c:	92407694 	and	x20, x20, #0x3fffffff
ffffff0000090750:	aa140014 	orr	x20, x0, x20
ffffff0000090754:	f90002b4 	str	x20, [x21]
ffffff0000090758:	52800000 	mov	w0, #0x0                   	// #0
ffffff000009075c:	14000012 	b	ffffff00000907a4 <query_in_pgtbl+0xd4>
ffffff0000090760:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090764:	f90002c0 	str	x0, [x22]
ffffff0000090768:	f9400000 	ldr	x0, [x0]
ffffff000009076c:	926b6800 	and	x0, x0, #0xffffffe00000
ffffff0000090770:	92405294 	and	x20, x20, #0x1fffff
ffffff0000090774:	aa140014 	orr	x20, x0, x20
ffffff0000090778:	f90002b4 	str	x20, [x21]
ffffff000009077c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090780:	14000009 	b	ffffff00000907a4 <query_in_pgtbl+0xd4>
ffffff0000090784:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090788:	f90002c0 	str	x0, [x22]
ffffff000009078c:	f9400000 	ldr	x0, [x0]
ffffff0000090790:	92748c00 	and	x0, x0, #0xfffffffff000
ffffff0000090794:	92402e94 	and	x20, x20, #0xfff
ffffff0000090798:	aa140014 	orr	x20, x0, x20
ffffff000009079c:	f90002b4 	str	x20, [x21]
ffffff00000907a0:	52800000 	mov	w0, #0x0                   	// #0
ffffff00000907a4:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff00000907a8:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff00000907ac:	a8c47bfd 	ldp	x29, x30, [sp], #64
ffffff00000907b0:	d65f03c0 	ret

ffffff00000907b4 <map_range_in_pgtbl>:
ffffff00000907b4:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
ffffff00000907b8:	910003fd 	mov	x29, sp
ffffff00000907bc:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000907c0:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000907c4:	a90363f7 	stp	x23, x24, [sp, #48]
ffffff00000907c8:	f90023f9 	str	x25, [sp, #64]
ffffff00000907cc:	aa0003f8 	mov	x24, x0
ffffff00000907d0:	aa0103f5 	mov	x21, x1
ffffff00000907d4:	aa0203f7 	mov	x23, x2
ffffff00000907d8:	aa0303f6 	mov	x22, x3
ffffff00000907dc:	aa0403f9 	mov	x25, x4
ffffff00000907e0:	f240743f 	tst	x1, #0x3fffffff
ffffff00000907e4:	540000c1 	b.ne	ffffff00000907fc <map_range_in_pgtbl+0x48>  // b.any
ffffff00000907e8:	f2407453 	ands	x19, x2, #0x3fffffff
ffffff00000907ec:	54000081 	b.ne	ffffff00000907fc <map_range_in_pgtbl+0x48>  // b.any
ffffff00000907f0:	b24077e0 	mov	x0, #0x3fffffff            	// #1073741823
ffffff00000907f4:	eb00007f 	cmp	x3, x0
ffffff00000907f8:	54000588 	b.hi	ffffff00000908a8 <map_range_in_pgtbl+0xf4>  // b.pmore
ffffff00000907fc:	f24052bf 	tst	x21, #0x1fffff
ffffff0000090800:	540000c1 	b.ne	ffffff0000090818 <map_range_in_pgtbl+0x64>  // b.any
ffffff0000090804:	f24052f4 	ands	x20, x23, #0x1fffff
ffffff0000090808:	54000081 	b.ne	ffffff0000090818 <map_range_in_pgtbl+0x64>  // b.any
ffffff000009080c:	b24053e0 	mov	x0, #0x1fffff              	// #2097151
ffffff0000090810:	eb0002df 	cmp	x22, x0
ffffff0000090814:	540009e8 	b.hi	ffffff0000090950 <map_range_in_pgtbl+0x19c>  // b.pmore
ffffff0000090818:	b4000fb6 	cbz	x22, ffffff0000090a0c <map_range_in_pgtbl+0x258>
ffffff000009081c:	d2800014 	mov	x20, #0x0                   	// #0
ffffff0000090820:	14000076 	b	ffffff00000909f8 <map_range_in_pgtbl+0x244>
ffffff0000090824:	52800025 	mov	w5, #0x1                   	// #1
ffffff0000090828:	910143e4 	add	x4, sp, #0x50
ffffff000009082c:	910163e3 	add	x3, sp, #0x58
ffffff0000090830:	8b150262 	add	x2, x19, x21
ffffff0000090834:	2a1403e1 	mov	w1, w20
ffffff0000090838:	97ffff03 	bl	ffffff0000090444 <get_next_ptp>
ffffff000009083c:	11000694 	add	w20, w20, #0x1
ffffff0000090840:	f9402fe0 	ldr	x0, [sp, #88]
ffffff0000090844:	7100029f 	cmp	w20, #0x0
ffffff0000090848:	54fffeed 	b.le	ffffff0000090824 <map_range_in_pgtbl+0x70>
ffffff000009084c:	8b150261 	add	x1, x19, x21
ffffff0000090850:	d35e9821 	ubfx	x1, x1, #30, #9
ffffff0000090854:	8b010c02 	add	x2, x0, x1, lsl #3
ffffff0000090858:	f9002be2 	str	x2, [sp, #80]
ffffff000009085c:	8b170262 	add	x2, x19, x23
ffffff0000090860:	f8617803 	ldr	x3, [x0, x1, lsl #3]
ffffff0000090864:	d35ebc42 	ubfx	x2, x2, #30, #18
ffffff0000090868:	b3624443 	bfi	x3, x2, #30, #18
ffffff000009086c:	f8217803 	str	x3, [x0, x1, lsl #3]
ffffff0000090870:	f9402be1 	ldr	x1, [sp, #80]
ffffff0000090874:	39400020 	ldrb	w0, [x1]
ffffff0000090878:	121e7800 	and	w0, w0, #0xfffffffd
ffffff000009087c:	39000020 	strb	w0, [x1]
ffffff0000090880:	f9402be1 	ldr	x1, [sp, #80]
ffffff0000090884:	39400020 	ldrb	w0, [x1]
ffffff0000090888:	32000000 	orr	w0, w0, #0x1
ffffff000009088c:	39000020 	strb	w0, [x1]
ffffff0000090890:	52800002 	mov	w2, #0x0                   	// #0
ffffff0000090894:	aa1903e1 	mov	x1, x25
ffffff0000090898:	f9402be0 	ldr	x0, [sp, #80]
ffffff000009089c:	97fffeb3 	bl	ffffff0000090368 <set_pte_flags>
ffffff00000908a0:	d2a80000 	mov	x0, #0x40000000            	// #1073741824
ffffff00000908a4:	8b000273 	add	x19, x19, x0
ffffff00000908a8:	926286c0 	and	x0, x22, #0xffffffffc0000000
ffffff00000908ac:	eb13001f 	cmp	x0, x19
ffffff00000908b0:	54000089 	b.ls	ffffff00000908c0 <map_range_in_pgtbl+0x10c>  // b.plast
ffffff00000908b4:	aa1803e0 	mov	x0, x24
ffffff00000908b8:	52800014 	mov	w20, #0x0                   	// #0
ffffff00000908bc:	17ffffe2 	b	ffffff0000090844 <map_range_in_pgtbl+0x90>
ffffff00000908c0:	8b0002b5 	add	x21, x21, x0
ffffff00000908c4:	8b0002f7 	add	x23, x23, x0
ffffff00000908c8:	924076d6 	and	x22, x22, #0x3fffffff
ffffff00000908cc:	17ffffcc 	b	ffffff00000907fc <map_range_in_pgtbl+0x48>
ffffff00000908d0:	52800025 	mov	w5, #0x1                   	// #1
ffffff00000908d4:	910143e4 	add	x4, sp, #0x50
ffffff00000908d8:	910163e3 	add	x3, sp, #0x58
ffffff00000908dc:	8b1402a2 	add	x2, x21, x20
ffffff00000908e0:	2a1303e1 	mov	w1, w19
ffffff00000908e4:	97fffed8 	bl	ffffff0000090444 <get_next_ptp>
ffffff00000908e8:	11000673 	add	w19, w19, #0x1
ffffff00000908ec:	f9402fe0 	ldr	x0, [sp, #88]
ffffff00000908f0:	7100067f 	cmp	w19, #0x1
ffffff00000908f4:	54fffeed 	b.le	ffffff00000908d0 <map_range_in_pgtbl+0x11c>
ffffff00000908f8:	8b1402a1 	add	x1, x21, x20
ffffff00000908fc:	d3557421 	ubfx	x1, x1, #21, #9
ffffff0000090900:	8b010c02 	add	x2, x0, x1, lsl #3
ffffff0000090904:	f9002be2 	str	x2, [sp, #80]
ffffff0000090908:	8b1402e2 	add	x2, x23, x20
ffffff000009090c:	f8617803 	ldr	x3, [x0, x1, lsl #3]
ffffff0000090910:	d355bc42 	ubfx	x2, x2, #21, #27
ffffff0000090914:	b36b6843 	bfi	x3, x2, #21, #27
ffffff0000090918:	f8217803 	str	x3, [x0, x1, lsl #3]
ffffff000009091c:	f9402be1 	ldr	x1, [sp, #80]
ffffff0000090920:	39400020 	ldrb	w0, [x1]
ffffff0000090924:	121e7800 	and	w0, w0, #0xfffffffd
ffffff0000090928:	39000020 	strb	w0, [x1]
ffffff000009092c:	f9402be1 	ldr	x1, [sp, #80]
ffffff0000090930:	39400020 	ldrb	w0, [x1]
ffffff0000090934:	32000000 	orr	w0, w0, #0x1
ffffff0000090938:	39000020 	strb	w0, [x1]
ffffff000009093c:	52800002 	mov	w2, #0x0                   	// #0
ffffff0000090940:	aa1903e1 	mov	x1, x25
ffffff0000090944:	f9402be0 	ldr	x0, [sp, #80]
ffffff0000090948:	97fffe88 	bl	ffffff0000090368 <set_pte_flags>
ffffff000009094c:	91480294 	add	x20, x20, #0x200, lsl #12
ffffff0000090950:	926baac0 	and	x0, x22, #0xffffffffffe00000
ffffff0000090954:	eb14001f 	cmp	x0, x20
ffffff0000090958:	54000089 	b.ls	ffffff0000090968 <map_range_in_pgtbl+0x1b4>  // b.plast
ffffff000009095c:	aa1803e0 	mov	x0, x24
ffffff0000090960:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090964:	17ffffe3 	b	ffffff00000908f0 <map_range_in_pgtbl+0x13c>
ffffff0000090968:	8b0002b5 	add	x21, x21, x0
ffffff000009096c:	8b0002f7 	add	x23, x23, x0
ffffff0000090970:	924052d6 	and	x22, x22, #0x1fffff
ffffff0000090974:	17ffffa9 	b	ffffff0000090818 <map_range_in_pgtbl+0x64>
ffffff0000090978:	52800025 	mov	w5, #0x1                   	// #1
ffffff000009097c:	910143e4 	add	x4, sp, #0x50
ffffff0000090980:	910163e3 	add	x3, sp, #0x58
ffffff0000090984:	8b1402a2 	add	x2, x21, x20
ffffff0000090988:	2a1303e1 	mov	w1, w19
ffffff000009098c:	97fffeae 	bl	ffffff0000090444 <get_next_ptp>
ffffff0000090990:	11000673 	add	w19, w19, #0x1
ffffff0000090994:	f9402fe0 	ldr	x0, [sp, #88]
ffffff0000090998:	71000a7f 	cmp	w19, #0x2
ffffff000009099c:	54fffeed 	b.le	ffffff0000090978 <map_range_in_pgtbl+0x1c4>
ffffff00000909a0:	8b1402a5 	add	x5, x21, x20
ffffff00000909a4:	d34c50a5 	ubfx	x5, x5, #12, #9
ffffff00000909a8:	8b050c01 	add	x1, x0, x5, lsl #3
ffffff00000909ac:	f9002be1 	str	x1, [sp, #80]
ffffff00000909b0:	8b1402e1 	add	x1, x23, x20
ffffff00000909b4:	d34cbc21 	ubfx	x1, x1, #12, #36
ffffff00000909b8:	f8657802 	ldr	x2, [x0, x5, lsl #3]
ffffff00000909bc:	b3748c22 	bfi	x2, x1, #12, #36
ffffff00000909c0:	f8257802 	str	x2, [x0, x5, lsl #3]
ffffff00000909c4:	f9402be1 	ldr	x1, [sp, #80]
ffffff00000909c8:	39400020 	ldrb	w0, [x1]
ffffff00000909cc:	321f0000 	orr	w0, w0, #0x2
ffffff00000909d0:	39000020 	strb	w0, [x1]
ffffff00000909d4:	f9402be1 	ldr	x1, [sp, #80]
ffffff00000909d8:	39400020 	ldrb	w0, [x1]
ffffff00000909dc:	32000000 	orr	w0, w0, #0x1
ffffff00000909e0:	39000020 	strb	w0, [x1]
ffffff00000909e4:	52800002 	mov	w2, #0x0                   	// #0
ffffff00000909e8:	aa1903e1 	mov	x1, x25
ffffff00000909ec:	f9402be0 	ldr	x0, [sp, #80]
ffffff00000909f0:	97fffe5e 	bl	ffffff0000090368 <set_pte_flags>
ffffff00000909f4:	91400694 	add	x20, x20, #0x1, lsl #12
ffffff00000909f8:	eb1402df 	cmp	x22, x20
ffffff00000909fc:	54000089 	b.ls	ffffff0000090a0c <map_range_in_pgtbl+0x258>  // b.plast
ffffff0000090a00:	aa1803e0 	mov	x0, x24
ffffff0000090a04:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090a08:	17ffffe4 	b	ffffff0000090998 <map_range_in_pgtbl+0x1e4>
ffffff0000090a0c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090a10:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000090a14:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000090a18:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff0000090a1c:	f94023f9 	ldr	x25, [sp, #64]
ffffff0000090a20:	a8c67bfd 	ldp	x29, x30, [sp], #96
ffffff0000090a24:	d65f03c0 	ret

ffffff0000090a28 <unmap_range_in_pgtbl>:
ffffff0000090a28:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
ffffff0000090a2c:	910003fd 	mov	x29, sp
ffffff0000090a30:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff0000090a34:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff0000090a38:	f9001bf7 	str	x23, [sp, #48]
ffffff0000090a3c:	aa0003f7 	mov	x23, x0
ffffff0000090a40:	aa0103f5 	mov	x21, x1
ffffff0000090a44:	aa0203f6 	mov	x22, x2
ffffff0000090a48:	f2407434 	ands	x20, x1, #0x3fffffff
ffffff0000090a4c:	54000081 	b.ne	ffffff0000090a5c <unmap_range_in_pgtbl+0x34>  // b.any
ffffff0000090a50:	b24077e0 	mov	x0, #0x3fffffff            	// #1073741823
ffffff0000090a54:	eb00005f 	cmp	x2, x0
ffffff0000090a58:	54000388 	b.hi	ffffff0000090ac8 <unmap_range_in_pgtbl+0xa0>  // b.pmore
ffffff0000090a5c:	f24052b4 	ands	x20, x21, #0x1fffff
ffffff0000090a60:	54000081 	b.ne	ffffff0000090a70 <unmap_range_in_pgtbl+0x48>  // b.any
ffffff0000090a64:	b24053e0 	mov	x0, #0x1fffff              	// #2097151
ffffff0000090a68:	eb0002df 	cmp	x22, x0
ffffff0000090a6c:	54000648 	b.hi	ffffff0000090b34 <unmap_range_in_pgtbl+0x10c>  // b.pmore
ffffff0000090a70:	b4000a36 	cbz	x22, ffffff0000090bb4 <unmap_range_in_pgtbl+0x18c>
ffffff0000090a74:	d2800014 	mov	x20, #0x0                   	// #0
ffffff0000090a78:	1400004a 	b	ffffff0000090ba0 <unmap_range_in_pgtbl+0x178>
ffffff0000090a7c:	52800005 	mov	w5, #0x0                   	// #0
ffffff0000090a80:	910103e4 	add	x4, sp, #0x40
ffffff0000090a84:	910123e3 	add	x3, sp, #0x48
ffffff0000090a88:	8b150282 	add	x2, x20, x21
ffffff0000090a8c:	2a1303e1 	mov	w1, w19
ffffff0000090a90:	97fffe6d 	bl	ffffff0000090444 <get_next_ptp>
ffffff0000090a94:	11000673 	add	w19, w19, #0x1
ffffff0000090a98:	f94027e0 	ldr	x0, [sp, #72]
ffffff0000090a9c:	7100027f 	cmp	w19, #0x0
ffffff0000090aa0:	54fffeed 	b.le	ffffff0000090a7c <unmap_range_in_pgtbl+0x54>
ffffff0000090aa4:	8b150281 	add	x1, x20, x21
ffffff0000090aa8:	d35e9821 	ubfx	x1, x1, #30, #9
ffffff0000090aac:	8b010c00 	add	x0, x0, x1, lsl #3
ffffff0000090ab0:	f90023e0 	str	x0, [sp, #64]
ffffff0000090ab4:	d2800102 	mov	x2, #0x8                   	// #8
ffffff0000090ab8:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090abc:	97fffe23 	bl	ffffff0000090348 <memset>
ffffff0000090ac0:	d2a80000 	mov	x0, #0x40000000            	// #1073741824
ffffff0000090ac4:	8b000294 	add	x20, x20, x0
ffffff0000090ac8:	926286c0 	and	x0, x22, #0xffffffffc0000000
ffffff0000090acc:	eb14001f 	cmp	x0, x20
ffffff0000090ad0:	54000089 	b.ls	ffffff0000090ae0 <unmap_range_in_pgtbl+0xb8>  // b.plast
ffffff0000090ad4:	aa1703e0 	mov	x0, x23
ffffff0000090ad8:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090adc:	17fffff0 	b	ffffff0000090a9c <unmap_range_in_pgtbl+0x74>
ffffff0000090ae0:	8b0002b5 	add	x21, x21, x0
ffffff0000090ae4:	924076d6 	and	x22, x22, #0x3fffffff
ffffff0000090ae8:	17ffffdd 	b	ffffff0000090a5c <unmap_range_in_pgtbl+0x34>
ffffff0000090aec:	52800005 	mov	w5, #0x0                   	// #0
ffffff0000090af0:	910103e4 	add	x4, sp, #0x40
ffffff0000090af4:	910123e3 	add	x3, sp, #0x48
ffffff0000090af8:	8b1402a2 	add	x2, x21, x20
ffffff0000090afc:	2a1303e1 	mov	w1, w19
ffffff0000090b00:	97fffe51 	bl	ffffff0000090444 <get_next_ptp>
ffffff0000090b04:	11000673 	add	w19, w19, #0x1
ffffff0000090b08:	f94027e0 	ldr	x0, [sp, #72]
ffffff0000090b0c:	7100067f 	cmp	w19, #0x1
ffffff0000090b10:	54fffeed 	b.le	ffffff0000090aec <unmap_range_in_pgtbl+0xc4>
ffffff0000090b14:	8b1402a1 	add	x1, x21, x20
ffffff0000090b18:	d3557421 	ubfx	x1, x1, #21, #9
ffffff0000090b1c:	8b010c00 	add	x0, x0, x1, lsl #3
ffffff0000090b20:	f90023e0 	str	x0, [sp, #64]
ffffff0000090b24:	d2800102 	mov	x2, #0x8                   	// #8
ffffff0000090b28:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090b2c:	97fffe07 	bl	ffffff0000090348 <memset>
ffffff0000090b30:	91480294 	add	x20, x20, #0x200, lsl #12
ffffff0000090b34:	926baac0 	and	x0, x22, #0xffffffffffe00000
ffffff0000090b38:	eb14001f 	cmp	x0, x20
ffffff0000090b3c:	54000089 	b.ls	ffffff0000090b4c <unmap_range_in_pgtbl+0x124>  // b.plast
ffffff0000090b40:	aa1703e0 	mov	x0, x23
ffffff0000090b44:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090b48:	17fffff1 	b	ffffff0000090b0c <unmap_range_in_pgtbl+0xe4>
ffffff0000090b4c:	8b0002b5 	add	x21, x21, x0
ffffff0000090b50:	924052d6 	and	x22, x22, #0x1fffff
ffffff0000090b54:	17ffffc7 	b	ffffff0000090a70 <unmap_range_in_pgtbl+0x48>
ffffff0000090b58:	52800005 	mov	w5, #0x0                   	// #0
ffffff0000090b5c:	910103e4 	add	x4, sp, #0x40
ffffff0000090b60:	910123e3 	add	x3, sp, #0x48
ffffff0000090b64:	8b1402a2 	add	x2, x21, x20
ffffff0000090b68:	2a1303e1 	mov	w1, w19
ffffff0000090b6c:	97fffe36 	bl	ffffff0000090444 <get_next_ptp>
ffffff0000090b70:	11000673 	add	w19, w19, #0x1
ffffff0000090b74:	f94027e0 	ldr	x0, [sp, #72]
ffffff0000090b78:	71000a7f 	cmp	w19, #0x2
ffffff0000090b7c:	54fffeed 	b.le	ffffff0000090b58 <unmap_range_in_pgtbl+0x130>
ffffff0000090b80:	8b1402a1 	add	x1, x21, x20
ffffff0000090b84:	d34c5021 	ubfx	x1, x1, #12, #9
ffffff0000090b88:	8b010c00 	add	x0, x0, x1, lsl #3
ffffff0000090b8c:	f90023e0 	str	x0, [sp, #64]
ffffff0000090b90:	d2800102 	mov	x2, #0x8                   	// #8
ffffff0000090b94:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090b98:	97fffdec 	bl	ffffff0000090348 <memset>
ffffff0000090b9c:	91400694 	add	x20, x20, #0x1, lsl #12
ffffff0000090ba0:	eb1402df 	cmp	x22, x20
ffffff0000090ba4:	54000089 	b.ls	ffffff0000090bb4 <unmap_range_in_pgtbl+0x18c>  // b.plast
ffffff0000090ba8:	aa1703e0 	mov	x0, x23
ffffff0000090bac:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090bb0:	17fffff2 	b	ffffff0000090b78 <unmap_range_in_pgtbl+0x150>
ffffff0000090bb4:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090bb8:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000090bbc:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000090bc0:	f9401bf7 	ldr	x23, [sp, #48]
ffffff0000090bc4:	a8c57bfd 	ldp	x29, x30, [sp], #80
ffffff0000090bc8:	d65f03c0 	ret

ffffff0000090bcc <lab2_test_page_table>:
ffffff0000090bcc:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
ffffff0000090bd0:	910003fd 	mov	x29, sp
ffffff0000090bd4:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff0000090bd8:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff0000090bdc:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090be0:	94000988 	bl	ffffff0000093200 <get_pages>
ffffff0000090be4:	aa0003f3 	mov	x19, x0
ffffff0000090be8:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff0000090bec:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090bf0:	97fffdd6 	bl	ffffff0000090348 <memset>
ffffff0000090bf4:	d2820015 	mov	x21, #0x1000                	// #4096
ffffff0000090bf8:	f2a02015 	movk	x21, #0x100, lsl #16
ffffff0000090bfc:	d2800064 	mov	x4, #0x3                   	// #3
ffffff0000090c00:	d2820003 	mov	x3, #0x1000                	// #4096
ffffff0000090c04:	aa0303e2 	mov	x2, x3
ffffff0000090c08:	aa1503e1 	mov	x1, x21
ffffff0000090c0c:	aa1303e0 	mov	x0, x19
ffffff0000090c10:	97fffee9 	bl	ffffff00000907b4 <map_range_in_pgtbl>
ffffff0000090c14:	2a0003f4 	mov	w20, w0
ffffff0000090c18:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090c1c:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090c20:	aa1503e1 	mov	x1, x21
ffffff0000090c24:	aa1303e0 	mov	x0, x19
ffffff0000090c28:	97fffeaa 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090c2c:	2a000294 	orr	w20, w20, w0
ffffff0000090c30:	350000d4 	cbnz	w20, ffffff0000090c48 <lab2_test_page_table+0x7c>
ffffff0000090c34:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090c38:	f140041f 	cmp	x0, #0x1, lsl #12
ffffff0000090c3c:	540001c0 	b.eq	ffffff0000090c74 <lab2_test_page_table+0xa8>  // b.none
ffffff0000090c40:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090c44:	14000002 	b	ffffff0000090c4c <lab2_test_page_table+0x80>
ffffff0000090c48:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090c4c:	34000180 	cbz	w0, ffffff0000090c7c <lab2_test_page_table+0xb0>
ffffff0000090c50:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090c54:	b40003a0 	cbz	x0, ffffff0000090cc8 <lab2_test_page_table+0xfc>
ffffff0000090c58:	79400001 	ldrh	w1, [x0]
ffffff0000090c5c:	52806060 	mov	w0, #0x303                 	// #771
ffffff0000090c60:	0a010000 	and	w0, w0, w1
ffffff0000090c64:	710c0c1f 	cmp	w0, #0x303
ffffff0000090c68:	54000340 	b.eq	ffffff0000090cd0 <lab2_test_page_table+0x104>  // b.none
ffffff0000090c6c:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090c70:	14000004 	b	ffffff0000090c80 <lab2_test_page_table+0xb4>
ffffff0000090c74:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000090c78:	17fffff5 	b	ffffff0000090c4c <lab2_test_page_table+0x80>
ffffff0000090c7c:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090c80:	12001e94 	and	w20, w20, #0xff
ffffff0000090c84:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090c88:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090c8c:	d2820a01 	mov	x1, #0x1050                	// #4176
ffffff0000090c90:	f2a02001 	movk	x1, #0x100, lsl #16
ffffff0000090c94:	aa1303e0 	mov	x0, x19
ffffff0000090c98:	97fffe8e 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090c9c:	7100001f 	cmp	w0, #0x0
ffffff0000090ca0:	1a9f17e0 	cset	w0, eq  // eq = none
ffffff0000090ca4:	7100029f 	cmp	w20, #0x0
ffffff0000090ca8:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
ffffff0000090cac:	54000160 	b.eq	ffffff0000090cd8 <lab2_test_page_table+0x10c>  // b.none
ffffff0000090cb0:	f9401be1 	ldr	x1, [sp, #48]
ffffff0000090cb4:	d2820a00 	mov	x0, #0x1050                	// #4176
ffffff0000090cb8:	eb00003f 	cmp	x1, x0
ffffff0000090cbc:	54000740 	b.eq	ffffff0000090da4 <lab2_test_page_table+0x1d8>  // b.none
ffffff0000090cc0:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090cc4:	14000006 	b	ffffff0000090cdc <lab2_test_page_table+0x110>
ffffff0000090cc8:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090ccc:	17ffffed 	b	ffffff0000090c80 <lab2_test_page_table+0xb4>
ffffff0000090cd0:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000090cd4:	17ffffeb 	b	ffffff0000090c80 <lab2_test_page_table+0xb4>
ffffff0000090cd8:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090cdc:	12001e94 	and	w20, w20, #0xff
ffffff0000090ce0:	d2820015 	mov	x21, #0x1000                	// #4096
ffffff0000090ce4:	f2a02015 	movk	x21, #0x100, lsl #16
ffffff0000090ce8:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff0000090cec:	aa1503e1 	mov	x1, x21
ffffff0000090cf0:	aa1303e0 	mov	x0, x19
ffffff0000090cf4:	97ffff4d 	bl	ffffff0000090a28 <unmap_range_in_pgtbl>
ffffff0000090cf8:	7100001f 	cmp	w0, #0x0
ffffff0000090cfc:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000090d00:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090d04:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090d08:	aa1503e1 	mov	x1, x21
ffffff0000090d0c:	aa1303e0 	mov	x0, x19
ffffff0000090d10:	97fffe70 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090d14:	31032c1f 	cmn	w0, #0xcb
ffffff0000090d18:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000090d1c:	aa1303e0 	mov	x0, x19
ffffff0000090d20:	97fffe28 	bl	ffffff00000905c0 <free_page_table>
ffffff0000090d24:	34000454 	cbz	w20, ffffff0000090dac <lab2_test_page_table+0x1e0>
ffffff0000090d28:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090d2c:	91062021 	add	x1, x1, #0x188
ffffff0000090d30:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090d34:	91008000 	add	x0, x0, #0x20
ffffff0000090d38:	9400059c 	bl	ffffff00000923a8 <printk>
ffffff0000090d3c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090d40:	94000930 	bl	ffffff0000093200 <get_pages>
ffffff0000090d44:	aa0003f6 	mov	x22, x0
ffffff0000090d48:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff0000090d4c:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090d50:	97fffd7e 	bl	ffffff0000090348 <memset>
ffffff0000090d54:	d2800064 	mov	x4, #0x3                   	// #3
ffffff0000090d58:	d2940003 	mov	x3, #0xa000                	// #40960
ffffff0000090d5c:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff0000090d60:	aa0203e1 	mov	x1, x2
ffffff0000090d64:	f2a02001 	movk	x1, #0x100, lsl #16
ffffff0000090d68:	aa1603e0 	mov	x0, x22
ffffff0000090d6c:	97fffe92 	bl	ffffff00000907b4 <map_range_in_pgtbl>
ffffff0000090d70:	2a0003f3 	mov	w19, w0
ffffff0000090d74:	d2800064 	mov	x4, #0x3                   	// #3
ffffff0000090d78:	d2940003 	mov	x3, #0xa000                	// #40960
ffffff0000090d7c:	d2960002 	mov	x2, #0xb000                	// #45056
ffffff0000090d80:	aa0203e1 	mov	x1, x2
ffffff0000090d84:	f2a02001 	movk	x1, #0x100, lsl #16
ffffff0000090d88:	aa1603e0 	mov	x0, x22
ffffff0000090d8c:	97fffe8a 	bl	ffffff00000907b4 <map_range_in_pgtbl>
ffffff0000090d90:	2a000273 	orr	w19, w19, w0
ffffff0000090d94:	7100027f 	cmp	w19, #0x0
ffffff0000090d98:	1a9f17f4 	cset	w20, eq  // eq = none
ffffff0000090d9c:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090da0:	1400001d 	b	ffffff0000090e14 <lab2_test_page_table+0x248>
ffffff0000090da4:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000090da8:	17ffffcd 	b	ffffff0000090cdc <lab2_test_page_table+0x110>
ffffff0000090dac:	90000104 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090db0:	91068084 	add	x4, x4, #0x1a0
ffffff0000090db4:	52802d43 	mov	w3, #0x16a                 	// #362
ffffff0000090db8:	90000102 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090dbc:	9104c042 	add	x2, x2, #0x130
ffffff0000090dc0:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090dc4:	91062021 	add	x1, x1, #0x188
ffffff0000090dc8:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090dcc:	9101a000 	add	x0, x0, #0x68
ffffff0000090dd0:	94000576 	bl	ffffff00000923a8 <printk>
ffffff0000090dd4:	17ffffda 	b	ffffff0000090d3c <lab2_test_page_table+0x170>
ffffff0000090dd8:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090ddc:	34000160 	cbz	w0, ffffff0000090e08 <lab2_test_page_table+0x23c>
ffffff0000090de0:	f9401fe0 	ldr	x0, [sp, #56]
ffffff0000090de4:	b40004c0 	cbz	x0, ffffff0000090e7c <lab2_test_page_table+0x2b0>
ffffff0000090de8:	39400000 	ldrb	w0, [x0]
ffffff0000090dec:	12000400 	and	w0, w0, #0x3
ffffff0000090df0:	71000c1f 	cmp	w0, #0x3
ffffff0000090df4:	54000480 	b.eq	ffffff0000090e84 <lab2_test_page_table+0x2b8>  // b.none
ffffff0000090df8:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090dfc:	14000004 	b	ffffff0000090e0c <lab2_test_page_table+0x240>
ffffff0000090e00:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000090e04:	17fffff6 	b	ffffff0000090ddc <lab2_test_page_table+0x210>
ffffff0000090e08:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090e0c:	12001e94 	and	w20, w20, #0xff
ffffff0000090e10:	11000673 	add	w19, w19, #0x1
ffffff0000090e14:	93407e60 	sxtw	x0, w19
ffffff0000090e18:	f1004c1f 	cmp	x0, #0x13
ffffff0000090e1c:	54000388 	b.hi	ffffff0000090e8c <lab2_test_page_table+0x2c0>  // b.pmore
ffffff0000090e20:	53144e75 	lsl	w21, w19, #12
ffffff0000090e24:	52820a01 	mov	w1, #0x1050                	// #4176
ffffff0000090e28:	72a02001 	movk	w1, #0x100, lsl #16
ffffff0000090e2c:	0b0102a1 	add	w1, w21, w1
ffffff0000090e30:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090e34:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090e38:	93407c21 	sxtw	x1, w1
ffffff0000090e3c:	aa1603e0 	mov	x0, x22
ffffff0000090e40:	97fffe24 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090e44:	7100029f 	cmp	w20, #0x0
ffffff0000090e48:	1a9f07e1 	cset	w1, ne  // ne = any
ffffff0000090e4c:	7100001f 	cmp	w0, #0x0
ffffff0000090e50:	1a9f17e0 	cset	w0, eq  // eq = none
ffffff0000090e54:	7100003f 	cmp	w1, #0x0
ffffff0000090e58:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
ffffff0000090e5c:	54fffbe0 	b.eq	ffffff0000090dd8 <lab2_test_page_table+0x20c>  // b.none
ffffff0000090e60:	114006b5 	add	w21, w21, #0x1, lsl #12
ffffff0000090e64:	110142b5 	add	w21, w21, #0x50
ffffff0000090e68:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000090e6c:	eb35c01f 	cmp	x0, w21, sxtw
ffffff0000090e70:	54fffc80 	b.eq	ffffff0000090e00 <lab2_test_page_table+0x234>  // b.none
ffffff0000090e74:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090e78:	17ffffd9 	b	ffffff0000090ddc <lab2_test_page_table+0x210>
ffffff0000090e7c:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090e80:	17ffffe3 	b	ffffff0000090e0c <lab2_test_page_table+0x240>
ffffff0000090e84:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000090e88:	17ffffe1 	b	ffffff0000090e0c <lab2_test_page_table+0x240>
ffffff0000090e8c:	d2940002 	mov	x2, #0xa000                	// #40960
ffffff0000090e90:	d2820001 	mov	x1, #0x1000                	// #4096
ffffff0000090e94:	f2a02001 	movk	x1, #0x100, lsl #16
ffffff0000090e98:	aa1603e0 	mov	x0, x22
ffffff0000090e9c:	97fffee3 	bl	ffffff0000090a28 <unmap_range_in_pgtbl>
ffffff0000090ea0:	7100029f 	cmp	w20, #0x0
ffffff0000090ea4:	1a9f07f4 	cset	w20, ne  // ne = any
ffffff0000090ea8:	7100001f 	cmp	w0, #0x0
ffffff0000090eac:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000090eb0:	d2940002 	mov	x2, #0xa000                	// #40960
ffffff0000090eb4:	d2960001 	mov	x1, #0xb000                	// #45056
ffffff0000090eb8:	f2a02001 	movk	x1, #0x100, lsl #16
ffffff0000090ebc:	aa1603e0 	mov	x0, x22
ffffff0000090ec0:	97fffeda 	bl	ffffff0000090a28 <unmap_range_in_pgtbl>
ffffff0000090ec4:	7100001f 	cmp	w0, #0x0
ffffff0000090ec8:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000090ecc:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000090ed0:	1400000c 	b	ffffff0000090f00 <lab2_test_page_table+0x334>
ffffff0000090ed4:	52820a01 	mov	w1, #0x1050                	// #4176
ffffff0000090ed8:	72a02001 	movk	w1, #0x100, lsl #16
ffffff0000090edc:	0b133021 	add	w1, w1, w19, lsl #12
ffffff0000090ee0:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090ee4:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090ee8:	93407c21 	sxtw	x1, w1
ffffff0000090eec:	aa1603e0 	mov	x0, x22
ffffff0000090ef0:	97fffdf8 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090ef4:	31032c1f 	cmn	w0, #0xcb
ffffff0000090ef8:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000090efc:	11000673 	add	w19, w19, #0x1
ffffff0000090f00:	93407e60 	sxtw	x0, w19
ffffff0000090f04:	f1004c1f 	cmp	x0, #0x13
ffffff0000090f08:	54fffe69 	b.ls	ffffff0000090ed4 <lab2_test_page_table+0x308>  // b.plast
ffffff0000090f0c:	aa1603e0 	mov	x0, x22
ffffff0000090f10:	97fffdac 	bl	ffffff00000905c0 <free_page_table>
ffffff0000090f14:	340003f4 	cbz	w20, ffffff0000090f90 <lab2_test_page_table+0x3c4>
ffffff0000090f18:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090f1c:	9106a021 	add	x1, x1, #0x1a8
ffffff0000090f20:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090f24:	91008000 	add	x0, x0, #0x20
ffffff0000090f28:	94000520 	bl	ffffff00000923a8 <printk>
ffffff0000090f2c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000090f30:	940008b4 	bl	ffffff0000093200 <get_pages>
ffffff0000090f34:	aa0003f5 	mov	x21, x0
ffffff0000090f38:	d2820002 	mov	x2, #0x1000                	// #4096
ffffff0000090f3c:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000090f40:	97fffd02 	bl	ffffff0000090348 <memset>
ffffff0000090f44:	90000093 	adrp	x19, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000090f48:	f9401273 	ldr	x19, [x19, #32]
ffffff0000090f4c:	aa1303e0 	mov	x0, x19
ffffff0000090f50:	94000683 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000090f54:	aa0003f6 	mov	x22, x0
ffffff0000090f58:	d2800064 	mov	x4, #0x3                   	// #3
ffffff0000090f5c:	d2940003 	mov	x3, #0xa000                	// #40960
ffffff0000090f60:	f2a80803 	movk	x3, #0x4040, lsl #16
ffffff0000090f64:	d2c00022 	mov	x2, #0x100000000           	// #4294967296
ffffff0000090f68:	aa0203e1 	mov	x1, x2
ffffff0000090f6c:	aa1503e0 	mov	x0, x21
ffffff0000090f70:	97fffe11 	bl	ffffff00000907b4 <map_range_in_pgtbl>
ffffff0000090f74:	7100001f 	cmp	w0, #0x0
ffffff0000090f78:	1a9f17f4 	cset	w20, eq  // eq = none
ffffff0000090f7c:	aa1303e0 	mov	x0, x19
ffffff0000090f80:	94000677 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000090f84:	cb0002d6 	sub	x22, x22, x0
ffffff0000090f88:	d2c00033 	mov	x19, #0x100000000           	// #4294967296
ffffff0000090f8c:	14000010 	b	ffffff0000090fcc <lab2_test_page_table+0x400>
ffffff0000090f90:	90000104 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090f94:	91068084 	add	x4, x4, #0x1a0
ffffff0000090f98:	52803183 	mov	w3, #0x18c                 	// #396
ffffff0000090f9c:	90000102 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090fa0:	9104c042 	add	x2, x2, #0x130
ffffff0000090fa4:	90000101 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090fa8:	9106a021 	add	x1, x1, #0x1a8
ffffff0000090fac:	90000100 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000090fb0:	9101a000 	add	x0, x0, #0x68
ffffff0000090fb4:	940004fd 	bl	ffffff00000923a8 <printk>
ffffff0000090fb8:	17ffffdd 	b	ffffff0000090f2c <lab2_test_page_table+0x360>
ffffff0000090fbc:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000090fc0:	12001e94 	and	w20, w20, #0xff
ffffff0000090fc4:	91401673 	add	x19, x19, #0x5, lsl #12
ffffff0000090fc8:	91040273 	add	x19, x19, #0x100
ffffff0000090fcc:	d293ffe0 	mov	x0, #0x9fff                	// #40959
ffffff0000090fd0:	f2a80800 	movk	x0, #0x4040, lsl #16
ffffff0000090fd4:	f2c00020 	movk	x0, #0x1, lsl #32
ffffff0000090fd8:	eb00027f 	cmp	x19, x0
ffffff0000090fdc:	54000288 	b.hi	ffffff000009102c <lab2_test_page_table+0x460>  // b.pmore
ffffff0000090fe0:	9100e3e3 	add	x3, sp, #0x38
ffffff0000090fe4:	9100c3e2 	add	x2, sp, #0x30
ffffff0000090fe8:	aa1303e1 	mov	x1, x19
ffffff0000090fec:	aa1503e0 	mov	x0, x21
ffffff0000090ff0:	97fffdb8 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff0000090ff4:	7100029f 	cmp	w20, #0x0
ffffff0000090ff8:	1a9f07e1 	cset	w1, ne  // ne = any
ffffff0000090ffc:	7100001f 	cmp	w0, #0x0
ffffff0000091000:	1a9f17e0 	cset	w0, eq  // eq = none
ffffff0000091004:	7100003f 	cmp	w1, #0x0
ffffff0000091008:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
ffffff000009100c:	54fffd80 	b.eq	ffffff0000090fbc <lab2_test_page_table+0x3f0>  // b.none
ffffff0000091010:	f9401be0 	ldr	x0, [sp, #48]
ffffff0000091014:	eb13001f 	cmp	x0, x19
ffffff0000091018:	54000060 	b.eq	ffffff0000091024 <lab2_test_page_table+0x458>  // b.none
ffffff000009101c:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000091020:	17ffffe8 	b	ffffff0000090fc0 <lab2_test_page_table+0x3f4>
ffffff0000091024:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000091028:	17ffffe6 	b	ffffff0000090fc0 <lab2_test_page_table+0x3f4>
ffffff000009102c:	d2940002 	mov	x2, #0xa000                	// #40960
ffffff0000091030:	f2a80802 	movk	x2, #0x4040, lsl #16
ffffff0000091034:	d2c00021 	mov	x1, #0x100000000           	// #4294967296
ffffff0000091038:	aa1503e0 	mov	x0, x21
ffffff000009103c:	97fffe7b 	bl	ffffff0000090a28 <unmap_range_in_pgtbl>
ffffff0000091040:	7100029f 	cmp	w20, #0x0
ffffff0000091044:	1a9f07f4 	cset	w20, ne  // ne = any
ffffff0000091048:	7100001f 	cmp	w0, #0x0
ffffff000009104c:	1a9f0294 	csel	w20, w20, wzr, eq  // eq = none
ffffff0000091050:	d2c00033 	mov	x19, #0x100000000           	// #4294967296
ffffff0000091054:	d293ffe0 	mov	x0, #0x9fff                	// #40959
ffffff0000091058:	f2a80800 	movk	x0, #0x4040, lsl #16
ffffff000009105c:	f2c00020 	movk	x0, #0x1, lsl #32
ffffff0000091060:	eb00027f 	cmp	x19, x0
ffffff0000091064:	54000128 	b.hi	ffffff0000091088 <lab2_test_page_table+0x4bc>  // b.pmore
ffffff0000091068:	9100e3e3 	add	x3, sp, #0x38
ffffff000009106c:	9100c3e2 	add	x2, sp, #0x30
ffffff0000091070:	aa1303e1 	mov	x1, x19
ffffff0000091074:	aa1503e0 	mov	x0, x21
ffffff0000091078:	97fffd96 	bl	ffffff00000906d0 <query_in_pgtbl>
ffffff000009107c:	91401673 	add	x19, x19, #0x5, lsl #12
ffffff0000091080:	91040273 	add	x19, x19, #0x100
ffffff0000091084:	17fffff4 	b	ffffff0000091054 <lab2_test_page_table+0x488>
ffffff0000091088:	d28fffe0 	mov	x0, #0x7fff                	// #32767
ffffff000009108c:	eb0002df 	cmp	x22, x0
ffffff0000091090:	54000268 	b.hi	ffffff00000910dc <lab2_test_page_table+0x510>  // b.pmore
ffffff0000091094:	f00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091098:	91072021 	add	x1, x1, #0x1c8
ffffff000009109c:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910a0:	91008000 	add	x0, x0, #0x20
ffffff00000910a4:	940004c1 	bl	ffffff00000923a8 <printk>
ffffff00000910a8:	34000314 	cbz	w20, ffffff0000091108 <lab2_test_page_table+0x53c>
ffffff00000910ac:	f00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910b0:	91084021 	add	x1, x1, #0x210
ffffff00000910b4:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910b8:	91008000 	add	x0, x0, #0x20
ffffff00000910bc:	940004bb 	bl	ffffff00000923a8 <printk>
ffffff00000910c0:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910c4:	9108a000 	add	x0, x0, #0x228
ffffff00000910c8:	940004b8 	bl	ffffff00000923a8 <printk>
ffffff00000910cc:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff00000910d0:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff00000910d4:	a8c47bfd 	ldp	x29, x30, [sp], #64
ffffff00000910d8:	d65f03c0 	ret
ffffff00000910dc:	f00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910e0:	9107c084 	add	x4, x4, #0x1f0
ffffff00000910e4:	52803583 	mov	w3, #0x1ac                 	// #428
ffffff00000910e8:	f00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910ec:	9104c042 	add	x2, x2, #0x130
ffffff00000910f0:	f00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910f4:	91072021 	add	x1, x1, #0x1c8
ffffff00000910f8:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000910fc:	9101a000 	add	x0, x0, #0x68
ffffff0000091100:	940004aa 	bl	ffffff00000923a8 <printk>
ffffff0000091104:	17ffffe9 	b	ffffff00000910a8 <lab2_test_page_table+0x4dc>
ffffff0000091108:	f00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009110c:	91068084 	add	x4, x4, #0x1a0
ffffff0000091110:	528035a3 	mov	w3, #0x1ad                 	// #429
ffffff0000091114:	f00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091118:	9104c042 	add	x2, x2, #0x130
ffffff000009111c:	f00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091120:	91084021 	add	x1, x1, #0x210
ffffff0000091124:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091128:	9101a000 	add	x0, x0, #0x68
ffffff000009112c:	9400049f 	bl	ffffff00000923a8 <printk>
ffffff0000091130:	17ffffe4 	b	ffffff00000910c0 <lab2_test_page_table+0x4f4>

ffffff0000091134 <flush_idcache>:
ffffff0000091134:	d508751f 	ic	iallu
ffffff0000091138:	d503379f 	dsb	nsh
ffffff000009113c:	d5033fdf 	isb
ffffff0000091140:	d5033f9f 	dsb	sy
ffffff0000091144:	d5390020 	mrs	x0, clidr_el1
ffffff0000091148:	92680803 	and	x3, x0, #0x7000000
ffffff000009114c:	d357fc63 	lsr	x3, x3, #23
ffffff0000091150:	b40003c3 	cbz	x3, ffffff00000911c8 <finished_cisw>
ffffff0000091154:	d280000a 	mov	x10, #0x0                   	// #0

ffffff0000091158 <loop1_cisw>:
ffffff0000091158:	8b4a0542 	add	x2, x10, x10, lsr #1
ffffff000009115c:	9ac22401 	lsr	x1, x0, x2
ffffff0000091160:	92400821 	and	x1, x1, #0x7
ffffff0000091164:	f100083f 	cmp	x1, #0x2
ffffff0000091168:	540002ab 	b.lt	ffffff00000911bc <skip_cisw>  // b.tstop
ffffff000009116c:	d51a000a 	msr	csselr_el1, x10
ffffff0000091170:	d5033fdf 	isb
ffffff0000091174:	d5390001 	mrs	x1, ccsidr_el1
ffffff0000091178:	92400822 	and	x2, x1, #0x7
ffffff000009117c:	91001042 	add	x2, x2, #0x4
ffffff0000091180:	d2807fe4 	mov	x4, #0x3ff                 	// #1023
ffffff0000091184:	8a410c84 	and	x4, x4, x1, lsr #3
ffffff0000091188:	5ac01085 	clz	w5, w4
ffffff000009118c:	d28fffe7 	mov	x7, #0x7fff                	// #32767
ffffff0000091190:	8a4134e7 	and	x7, x7, x1, lsr #13

ffffff0000091194 <loop2_cisw>:
ffffff0000091194:	aa0403e9 	mov	x9, x4

ffffff0000091198 <loop3_cisw>:
ffffff0000091198:	9ac52126 	lsl	x6, x9, x5
ffffff000009119c:	aa06014b 	orr	x11, x10, x6
ffffff00000911a0:	9ac220e6 	lsl	x6, x7, x2
ffffff00000911a4:	aa06016b 	orr	x11, x11, x6
ffffff00000911a8:	d5087e4b 	dc	cisw, x11
ffffff00000911ac:	f1000529 	subs	x9, x9, #0x1
ffffff00000911b0:	54ffff4a 	b.ge	ffffff0000091198 <loop3_cisw>  // b.tcont
ffffff00000911b4:	f10004e7 	subs	x7, x7, #0x1
ffffff00000911b8:	54fffeea 	b.ge	ffffff0000091194 <loop2_cisw>  // b.tcont

ffffff00000911bc <skip_cisw>:
ffffff00000911bc:	9100094a 	add	x10, x10, #0x2
ffffff00000911c0:	eb0a007f 	cmp	x3, x10
ffffff00000911c4:	54fffcac 	b.gt	ffffff0000091158 <loop1_cisw>

ffffff00000911c8 <finished_cisw>:
ffffff00000911c8:	d280000a 	mov	x10, #0x0                   	// #0
ffffff00000911cc:	d51a000a 	msr	csselr_el1, x10
ffffff00000911d0:	d5033f9f 	dsb	sy
ffffff00000911d4:	d5033fdf 	isb
ffffff00000911d8:	d65f03c0 	ret

ffffff00000911dc <set_ttbr0_el1>:
ffffff00000911dc:	d5182000 	msr	ttbr0_el1, x0
ffffff00000911e0:	d5033fdf 	isb
ffffff00000911e4:	d65f03c0 	ret

ffffff00000911e8 <flush_tlb_all>:
ffffff00000911e8:	d5033f9f 	dsb	sy
ffffff00000911ec:	d508831f 	tlbi	vmalle1is
ffffff00000911f0:	d5033f9f 	dsb	sy
ffffff00000911f4:	d5033fdf 	isb
ffffff00000911f8:	d65f03c0 	ret

ffffff00000911fc <uart_lsr>:
ffffff00000911fc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000091200:	910003fd 	mov	x29, sp
ffffff0000091204:	9295f560 	mov	x0, #0xffffffffffff5054    	// #-44972
ffffff0000091208:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff000009120c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091210:	97fffbc0 	bl	ffffff0000090110 <get32>
ffffff0000091214:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000091218:	d65f03c0 	ret

ffffff000009121c <uart_recv>:
ffffff000009121c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000091220:	910003fd 	mov	x29, sp
ffffff0000091224:	97fffff6 	bl	ffffff00000911fc <uart_lsr>
ffffff0000091228:	3607ffe0 	tbz	w0, #0, ffffff0000091224 <uart_recv+0x8>
ffffff000009122c:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff0000091230:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff0000091234:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091238:	97fffbb6 	bl	ffffff0000090110 <get32>
ffffff000009123c:	12001c00 	and	w0, w0, #0xff
ffffff0000091240:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000091244:	d65f03c0 	ret

ffffff0000091248 <nb_uart_recv>:
ffffff0000091248:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff000009124c:	910003fd 	mov	x29, sp
ffffff0000091250:	97ffffeb 	bl	ffffff00000911fc <uart_lsr>
ffffff0000091254:	37000080 	tbnz	w0, #0, ffffff0000091264 <nb_uart_recv+0x1c>
ffffff0000091258:	12800000 	mov	w0, #0xffffffff            	// #-1
ffffff000009125c:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000091260:	d65f03c0 	ret
ffffff0000091264:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff0000091268:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff000009126c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091270:	97fffba8 	bl	ffffff0000090110 <get32>
ffffff0000091274:	12001c00 	and	w0, w0, #0xff
ffffff0000091278:	17fffff9 	b	ffffff000009125c <nb_uart_recv+0x14>

ffffff000009127c <uart_send>:
ffffff000009127c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000091280:	910003fd 	mov	x29, sp
ffffff0000091284:	f9000bf3 	str	x19, [sp, #16]
ffffff0000091288:	2a0003f3 	mov	w19, w0
ffffff000009128c:	97ffffdc 	bl	ffffff00000911fc <uart_lsr>
ffffff0000091290:	362fffe0 	tbz	w0, #5, ffffff000009128c <uart_send+0x10>
ffffff0000091294:	2a1303e1 	mov	w1, w19
ffffff0000091298:	9295f7e0 	mov	x0, #0xffffffffffff5040    	// #-44992
ffffff000009129c:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000912a0:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000912a4:	97fffb99 	bl	ffffff0000090108 <put32>
ffffff00000912a8:	f9400bf3 	ldr	x19, [sp, #16]
ffffff00000912ac:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000912b0:	d65f03c0 	ret

ffffff00000912b4 <uart_init>:
ffffff00000912b4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000912b8:	910003fd 	mov	x29, sp
ffffff00000912bc:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000912c0:	929fff73 	mov	x19, #0xffffffffffff0004    	// #-65532
ffffff00000912c4:	f2a7e413 	movk	x19, #0x3f20, lsl #16
ffffff00000912c8:	f2dfe013 	movk	x19, #0xff00, lsl #32
ffffff00000912cc:	aa1303e0 	mov	x0, x19
ffffff00000912d0:	97fffb90 	bl	ffffff0000090110 <get32>
ffffff00000912d4:	120e6400 	and	w0, w0, #0xfffc0fff
ffffff00000912d8:	52840001 	mov	w1, #0x2000                	// #8192
ffffff00000912dc:	72a00021 	movk	w1, #0x1, lsl #16
ffffff00000912e0:	2a010001 	orr	w1, w0, w1
ffffff00000912e4:	aa1303e0 	mov	x0, x19
ffffff00000912e8:	97fffb88 	bl	ffffff0000090108 <put32>
ffffff00000912ec:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000912f0:	929fed60 	mov	x0, #0xffffffffffff0094    	// #-65388
ffffff00000912f4:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff00000912f8:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000912fc:	97fffb83 	bl	ffffff0000090108 <put32>
ffffff0000091300:	528012c0 	mov	w0, #0x96                  	// #150
ffffff0000091304:	34000060 	cbz	w0, ffffff0000091310 <uart_init+0x5c>
ffffff0000091308:	51000400 	sub	w0, w0, #0x1
ffffff000009130c:	17fffffe 	b	ffffff0000091304 <uart_init+0x50>
ffffff0000091310:	52980001 	mov	w1, #0xc000                	// #49152
ffffff0000091314:	929fece0 	mov	x0, #0xffffffffffff0098    	// #-65384
ffffff0000091318:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff000009131c:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091320:	97fffb7a 	bl	ffffff0000090108 <put32>
ffffff0000091324:	528012c0 	mov	w0, #0x96                  	// #150
ffffff0000091328:	14000002 	b	ffffff0000091330 <uart_init+0x7c>
ffffff000009132c:	51000400 	sub	w0, w0, #0x1
ffffff0000091330:	35ffffe0 	cbnz	w0, ffffff000009132c <uart_init+0x78>
ffffff0000091334:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000091338:	929fece0 	mov	x0, #0xffffffffffff0098    	// #-65384
ffffff000009133c:	f2a7e400 	movk	x0, #0x3f20, lsl #16
ffffff0000091340:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091344:	97fffb71 	bl	ffffff0000090108 <put32>
ffffff0000091348:	52800021 	mov	w1, #0x1                   	// #1
ffffff000009134c:	9295ff60 	mov	x0, #0xffffffffffff5004    	// #-45052
ffffff0000091350:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff0000091354:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff0000091358:	97fffb6c 	bl	ffffff0000090108 <put32>
ffffff000009135c:	9295f774 	mov	x20, #0xffffffffffff5044    	// #-44988
ffffff0000091360:	f2a7e434 	movk	x20, #0x3f21, lsl #16
ffffff0000091364:	f2dfe014 	movk	x20, #0xff00, lsl #32
ffffff0000091368:	52800001 	mov	w1, #0x0                   	// #0
ffffff000009136c:	aa1403e0 	mov	x0, x20
ffffff0000091370:	97fffb66 	bl	ffffff0000090108 <put32>
ffffff0000091374:	9295f3f3 	mov	x19, #0xffffffffffff5060    	// #-44960
ffffff0000091378:	f2a7e433 	movk	x19, #0x3f21, lsl #16
ffffff000009137c:	f2dfe013 	movk	x19, #0xff00, lsl #32
ffffff0000091380:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000091384:	aa1303e0 	mov	x0, x19
ffffff0000091388:	97fffb60 	bl	ffffff0000090108 <put32>
ffffff000009138c:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000091390:	aa1403e0 	mov	x0, x20
ffffff0000091394:	97fffb5d 	bl	ffffff0000090108 <put32>
ffffff0000091398:	52800061 	mov	w1, #0x3                   	// #3
ffffff000009139c:	9295f660 	mov	x0, #0xffffffffffff504c    	// #-44980
ffffff00000913a0:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000913a4:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000913a8:	97fffb58 	bl	ffffff0000090108 <put32>
ffffff00000913ac:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000913b0:	9295f5e0 	mov	x0, #0xffffffffffff5050    	// #-44976
ffffff00000913b4:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000913b8:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000913bc:	97fffb53 	bl	ffffff0000090108 <put32>
ffffff00000913c0:	528021c1 	mov	w1, #0x10e                 	// #270
ffffff00000913c4:	9295f2e0 	mov	x0, #0xffffffffffff5068    	// #-44952
ffffff00000913c8:	f2a7e420 	movk	x0, #0x3f21, lsl #16
ffffff00000913cc:	f2dfe000 	movk	x0, #0xff00, lsl #32
ffffff00000913d0:	97fffb4e 	bl	ffffff0000090108 <put32>
ffffff00000913d4:	52800061 	mov	w1, #0x3                   	// #3
ffffff00000913d8:	aa1303e0 	mov	x0, x19
ffffff00000913dc:	97fffb4b 	bl	ffffff0000090108 <put32>
ffffff00000913e0:	52800180 	mov	w0, #0xc                   	// #12
ffffff00000913e4:	97ffffa6 	bl	ffffff000009127c <uart_send>
ffffff00000913e8:	52800360 	mov	w0, #0x1b                  	// #27
ffffff00000913ec:	97ffffa4 	bl	ffffff000009127c <uart_send>
ffffff00000913f0:	52800b60 	mov	w0, #0x5b                  	// #91
ffffff00000913f4:	97ffffa2 	bl	ffffff000009127c <uart_send>
ffffff00000913f8:	52800640 	mov	w0, #0x32                  	// #50
ffffff00000913fc:	97ffffa0 	bl	ffffff000009127c <uart_send>
ffffff0000091400:	52800940 	mov	w0, #0x4a                  	// #74
ffffff0000091404:	97ffff9e 	bl	ffffff000009127c <uart_send>
ffffff0000091408:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff000009140c:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000091410:	d65f03c0 	ret

ffffff0000091414 <parse_mem_map>:
ffffff0000091414:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000091418:	910003fd 	mov	x29, sp
ffffff000009141c:	f0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000091420:	f9402c00 	ldr	x0, [x0, #88]
ffffff0000091424:	52800021 	mov	w1, #0x1                   	// #1
ffffff0000091428:	b9000001 	str	w1, [x0]
ffffff000009142c:	f0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000091430:	f9401c21 	ldr	x1, [x1, #56]
ffffff0000091434:	913ffc21 	add	x1, x1, #0xfff
ffffff0000091438:	9274cc21 	and	x1, x1, #0xfffffffffffff000
ffffff000009143c:	f0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000091440:	f9400800 	ldr	x0, [x0, #16]
ffffff0000091444:	f9000001 	str	x1, [x0]
ffffff0000091448:	d2a7a002 	mov	x2, #0x3d000000            	// #1023410176
ffffff000009144c:	f9000402 	str	x2, [x0, #8]
ffffff0000091450:	f00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091454:	910a0000 	add	x0, x0, #0x280
ffffff0000091458:	940003d4 	bl	ffffff00000923a8 <printk>
ffffff000009145c:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000091460:	d65f03c0 	ret

ffffff0000091464 <simple_outputchar>:
ffffff0000091464:	12001c21 	and	w1, w1, #0xff
ffffff0000091468:	b40000e0 	cbz	x0, ffffff0000091484 <simple_outputchar+0x20>
ffffff000009146c:	f9400002 	ldr	x2, [x0]
ffffff0000091470:	39000041 	strb	w1, [x2]
ffffff0000091474:	f9400001 	ldr	x1, [x0]
ffffff0000091478:	91000421 	add	x1, x1, #0x1
ffffff000009147c:	f9000001 	str	x1, [x0]
ffffff0000091480:	d65f03c0 	ret
ffffff0000091484:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000091488:	910003fd 	mov	x29, sp
ffffff000009148c:	2a0103e0 	mov	w0, w1
ffffff0000091490:	97ffff7b 	bl	ffffff000009127c <uart_send>
ffffff0000091494:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000091498:	d65f03c0 	ret

ffffff000009149c <prints>:
ffffff000009149c:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
ffffff00000914a0:	910003fd 	mov	x29, sp
ffffff00000914a4:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000914a8:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000914ac:	f9001bf7 	str	x23, [sp, #48]
ffffff00000914b0:	aa0003f6 	mov	x22, x0
ffffff00000914b4:	aa0103f5 	mov	x21, x1
ffffff00000914b8:	2a0203f3 	mov	w19, w2
ffffff00000914bc:	7100005f 	cmp	w2, #0x0
ffffff00000914c0:	5400010d 	b.le	ffffff00000914e0 <prints+0x44>
ffffff00000914c4:	aa0103e0 	mov	x0, x1
ffffff00000914c8:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000914cc:	39400002 	ldrb	w2, [x0]
ffffff00000914d0:	340001e2 	cbz	w2, ffffff000009150c <prints+0x70>
ffffff00000914d4:	11000421 	add	w1, w1, #0x1
ffffff00000914d8:	91000400 	add	x0, x0, #0x1
ffffff00000914dc:	17fffffc 	b	ffffff00000914cc <prints+0x30>
ffffff00000914e0:	52800417 	mov	w23, #0x20                  	// #32
ffffff00000914e4:	121f0074 	and	w20, w3, #0x2
ffffff00000914e8:	36080303 	tbz	w3, #1, ffffff0000091548 <prints+0xac>
ffffff00000914ec:	52800014 	mov	w20, #0x0                   	// #0
ffffff00000914f0:	394002a1 	ldrb	w1, [x21]
ffffff00000914f4:	340003a1 	cbz	w1, ffffff0000091568 <prints+0xcc>
ffffff00000914f8:	aa1603e0 	mov	x0, x22
ffffff00000914fc:	97ffffda 	bl	ffffff0000091464 <simple_outputchar>
ffffff0000091500:	11000694 	add	w20, w20, #0x1
ffffff0000091504:	910006b5 	add	x21, x21, #0x1
ffffff0000091508:	17fffffa 	b	ffffff00000914f0 <prints+0x54>
ffffff000009150c:	6b13003f 	cmp	w1, w19
ffffff0000091510:	540000aa 	b.ge	ffffff0000091524 <prints+0x88>  // b.tcont
ffffff0000091514:	4b010273 	sub	w19, w19, w1
ffffff0000091518:	370000a3 	tbnz	w3, #0, ffffff000009152c <prints+0x90>
ffffff000009151c:	52800417 	mov	w23, #0x20                  	// #32
ffffff0000091520:	17fffff1 	b	ffffff00000914e4 <prints+0x48>
ffffff0000091524:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000091528:	17fffffc 	b	ffffff0000091518 <prints+0x7c>
ffffff000009152c:	52800617 	mov	w23, #0x30                  	// #48
ffffff0000091530:	17ffffed 	b	ffffff00000914e4 <prints+0x48>
ffffff0000091534:	2a1703e1 	mov	w1, w23
ffffff0000091538:	aa1603e0 	mov	x0, x22
ffffff000009153c:	97ffffca 	bl	ffffff0000091464 <simple_outputchar>
ffffff0000091540:	11000694 	add	w20, w20, #0x1
ffffff0000091544:	51000673 	sub	w19, w19, #0x1
ffffff0000091548:	7100027f 	cmp	w19, #0x0
ffffff000009154c:	54ffff4c 	b.gt	ffffff0000091534 <prints+0x98>
ffffff0000091550:	17ffffe8 	b	ffffff00000914f0 <prints+0x54>
ffffff0000091554:	2a1703e1 	mov	w1, w23
ffffff0000091558:	aa1603e0 	mov	x0, x22
ffffff000009155c:	97ffffc2 	bl	ffffff0000091464 <simple_outputchar>
ffffff0000091560:	11000694 	add	w20, w20, #0x1
ffffff0000091564:	51000673 	sub	w19, w19, #0x1
ffffff0000091568:	7100027f 	cmp	w19, #0x0
ffffff000009156c:	54ffff4c 	b.gt	ffffff0000091554 <prints+0xb8>
ffffff0000091570:	2a1403e0 	mov	w0, w20
ffffff0000091574:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000091578:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff000009157c:	f9401bf7 	ldr	x23, [sp, #48]
ffffff0000091580:	a8c47bfd 	ldp	x29, x30, [sp], #64
ffffff0000091584:	d65f03c0 	ret

ffffff0000091588 <simple_outputi>:
ffffff0000091588:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
ffffff000009158c:	910003fd 	mov	x29, sp
ffffff0000091590:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff0000091594:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff0000091598:	aa0003f6 	mov	x22, x0
ffffff000009159c:	2a0403f4 	mov	w20, w4
ffffff00000915a0:	2a0503f5 	mov	w21, w5
ffffff00000915a4:	b4000161 	cbz	x1, ffffff00000915d0 <simple_outputi+0x48>
ffffff00000915a8:	f9001bf7 	str	x23, [sp, #48]
ffffff00000915ac:	aa0103e0 	mov	x0, x1
ffffff00000915b0:	7100007f 	cmp	w3, #0x0
ffffff00000915b4:	1a9f07e3 	cset	w3, ne  // ne = any
ffffff00000915b8:	7100285f 	cmp	w2, #0xa
ffffff00000915bc:	1a9f0063 	csel	w3, w3, wzr, eq  // eq = none
ffffff00000915c0:	34000203 	cbz	w3, ffffff0000091600 <simple_outputi+0x78>
ffffff00000915c4:	b7f80181 	tbnz	x1, #63, ffffff00000915f4 <simple_outputi+0x6c>
ffffff00000915c8:	52800017 	mov	w23, #0x0                   	// #0
ffffff00000915cc:	1400000e 	b	ffffff0000091604 <simple_outputi+0x7c>
ffffff00000915d0:	52800600 	mov	w0, #0x30                  	// #48
ffffff00000915d4:	390103e0 	strb	w0, [sp, #64]
ffffff00000915d8:	390107ff 	strb	wzr, [sp, #65]
ffffff00000915dc:	2a0503e3 	mov	w3, w5
ffffff00000915e0:	2a0403e2 	mov	w2, w4
ffffff00000915e4:	910103e1 	add	x1, sp, #0x40
ffffff00000915e8:	aa1603e0 	mov	x0, x22
ffffff00000915ec:	97ffffac 	bl	ffffff000009149c <prints>
ffffff00000915f0:	14000023 	b	ffffff000009167c <simple_outputi+0xf4>
ffffff00000915f4:	cb0103e0 	neg	x0, x1
ffffff00000915f8:	52800037 	mov	w23, #0x1                   	// #1
ffffff00000915fc:	14000002 	b	ffffff0000091604 <simple_outputi+0x7c>
ffffff0000091600:	52800017 	mov	w23, #0x0                   	// #0
ffffff0000091604:	3901ffff 	strb	wzr, [sp, #127]
ffffff0000091608:	9101fff3 	add	x19, sp, #0x7f
ffffff000009160c:	14000004 	b	ffffff000009161c <simple_outputi+0x94>
ffffff0000091610:	1100c021 	add	w1, w1, #0x30
ffffff0000091614:	381ffe61 	strb	w1, [x19, #-1]!
ffffff0000091618:	9ac40800 	udiv	x0, x0, x4
ffffff000009161c:	b4000140 	cbz	x0, ffffff0000091644 <simple_outputi+0xbc>
ffffff0000091620:	93407c44 	sxtw	x4, w2
ffffff0000091624:	9ac40803 	udiv	x3, x0, x4
ffffff0000091628:	9b048063 	msub	x3, x3, x4, x0
ffffff000009162c:	2a0303e1 	mov	w1, w3
ffffff0000091630:	7100247f 	cmp	w3, #0x9
ffffff0000091634:	54fffeed 	b.le	ffffff0000091610 <simple_outputi+0x88>
ffffff0000091638:	5100e8c1 	sub	w1, w6, #0x3a
ffffff000009163c:	0b030021 	add	w1, w1, w3
ffffff0000091640:	17fffff4 	b	ffffff0000091610 <simple_outputi+0x88>
ffffff0000091644:	340000f7 	cbz	w23, ffffff0000091660 <simple_outputi+0xd8>
ffffff0000091648:	34000054 	cbz	w20, ffffff0000091650 <simple_outputi+0xc8>
ffffff000009164c:	37000215 	tbnz	w21, #0, ffffff000009168c <simple_outputi+0x104>
ffffff0000091650:	528005a0 	mov	w0, #0x2d                  	// #45
ffffff0000091654:	381ff260 	sturb	w0, [x19, #-1]
ffffff0000091658:	d1000673 	sub	x19, x19, #0x1
ffffff000009165c:	52800017 	mov	w23, #0x0                   	// #0
ffffff0000091660:	2a1503e3 	mov	w3, w21
ffffff0000091664:	2a1403e2 	mov	w2, w20
ffffff0000091668:	aa1303e1 	mov	x1, x19
ffffff000009166c:	aa1603e0 	mov	x0, x22
ffffff0000091670:	97ffff8b 	bl	ffffff000009149c <prints>
ffffff0000091674:	0b170000 	add	w0, w0, w23
ffffff0000091678:	f9401bf7 	ldr	x23, [sp, #48]
ffffff000009167c:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000091680:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000091684:	a8c87bfd 	ldp	x29, x30, [sp], #128
ffffff0000091688:	d65f03c0 	ret
ffffff000009168c:	528005a1 	mov	w1, #0x2d                  	// #45
ffffff0000091690:	aa1603e0 	mov	x0, x22
ffffff0000091694:	97ffff74 	bl	ffffff0000091464 <simple_outputchar>
ffffff0000091698:	51000694 	sub	w20, w20, #0x1
ffffff000009169c:	17fffff1 	b	ffffff0000091660 <simple_outputi+0xd8>

ffffff00000916a0 <simple_vsprintf>:
ffffff00000916a0:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
ffffff00000916a4:	910003fd 	mov	x29, sp
ffffff00000916a8:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000916ac:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000916b0:	a90363f7 	stp	x23, x24, [sp, #48]
ffffff00000916b4:	aa0003f5 	mov	x21, x0
ffffff00000916b8:	aa0103f3 	mov	x19, x1
ffffff00000916bc:	aa0203f6 	mov	x22, x2
ffffff00000916c0:	52800014 	mov	w20, #0x0                   	// #0
ffffff00000916c4:	14000328 	b	ffffff0000092364 <simple_vsprintf+0xcc4>
ffffff00000916c8:	91000666 	add	x6, x19, #0x1
ffffff00000916cc:	39400660 	ldrb	w0, [x19, #1]
ffffff00000916d0:	340065a0 	cbz	w0, ffffff0000092384 <simple_vsprintf+0xce4>
ffffff00000916d4:	7100941f 	cmp	w0, #0x25
ffffff00000916d8:	54006320 	b.eq	ffffff000009233c <simple_vsprintf+0xc9c>  // b.none
ffffff00000916dc:	7100b41f 	cmp	w0, #0x2d
ffffff00000916e0:	54000060 	b.eq	ffffff00000916ec <simple_vsprintf+0x4c>  // b.none
ffffff00000916e4:	52800005 	mov	w5, #0x0                   	// #0
ffffff00000916e8:	14000006 	b	ffffff0000091700 <simple_vsprintf+0x60>
ffffff00000916ec:	91000a66 	add	x6, x19, #0x2
ffffff00000916f0:	52800045 	mov	w5, #0x2                   	// #2
ffffff00000916f4:	14000003 	b	ffffff0000091700 <simple_vsprintf+0x60>
ffffff00000916f8:	910004c6 	add	x6, x6, #0x1
ffffff00000916fc:	320000a5 	orr	w5, w5, #0x1
ffffff0000091700:	394000c1 	ldrb	w1, [x6]
ffffff0000091704:	7100c03f 	cmp	w1, #0x30
ffffff0000091708:	54ffff80 	b.eq	ffffff00000916f8 <simple_vsprintf+0x58>  // b.none
ffffff000009170c:	7100a83f 	cmp	w1, #0x2a
ffffff0000091710:	54000721 	b.ne	ffffff00000917f4 <simple_vsprintf+0x154>  // b.any
ffffff0000091714:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091718:	f94002c0 	ldr	x0, [x22]
ffffff000009171c:	37f80561 	tbnz	w1, #31, ffffff00000917c8 <simple_vsprintf+0x128>
ffffff0000091720:	91002c01 	add	x1, x0, #0xb
ffffff0000091724:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091728:	f90002c1 	str	x1, [x22]
ffffff000009172c:	b9400004 	ldr	w4, [x0]
ffffff0000091730:	910004d3 	add	x19, x6, #0x1
ffffff0000091734:	39400260 	ldrb	w0, [x19]
ffffff0000091738:	7101b01f 	cmp	w0, #0x6c
ffffff000009173c:	54002440 	b.eq	ffffff0000091bc4 <simple_vsprintf+0x524>  // b.none
ffffff0000091740:	540009c8 	b.hi	ffffff0000091878 <simple_vsprintf+0x1d8>  // b.pmore
ffffff0000091744:	71018c1f 	cmp	w0, #0x63
ffffff0000091748:	54001ea0 	b.eq	ffffff0000091b1c <simple_vsprintf+0x47c>  // b.none
ffffff000009174c:	540006e9 	b.ls	ffffff0000091828 <simple_vsprintf+0x188>  // b.plast
ffffff0000091750:	7101901f 	cmp	w0, #0x64
ffffff0000091754:	54000e20 	b.eq	ffffff0000091918 <simple_vsprintf+0x278>  // b.none
ffffff0000091758:	7101a01f 	cmp	w0, #0x68
ffffff000009175c:	54006021 	b.ne	ffffff0000092360 <simple_vsprintf+0xcc0>  // b.any
ffffff0000091760:	91000678 	add	x24, x19, #0x1
ffffff0000091764:	39400660 	ldrb	w0, [x19, #1]
ffffff0000091768:	7101a01f 	cmp	w0, #0x68
ffffff000009176c:	54004ea0 	b.eq	ffffff0000092140 <simple_vsprintf+0xaa0>  // b.none
ffffff0000091770:	540041a9 	b.ls	ffffff0000091fa4 <simple_vsprintf+0x904>  // b.plast
ffffff0000091774:	7101d41f 	cmp	w0, #0x75
ffffff0000091778:	540045e0 	b.eq	ffffff0000092034 <simple_vsprintf+0x994>  // b.none
ffffff000009177c:	7101e01f 	cmp	w0, #0x78
ffffff0000091780:	54004401 	b.ne	ffffff0000092000 <simple_vsprintf+0x960>  // b.any
ffffff0000091784:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091788:	f94002c0 	ldr	x0, [x22]
ffffff000009178c:	37f848c1 	tbnz	w1, #31, ffffff00000920a4 <simple_vsprintf+0xa04>
ffffff0000091790:	91002c01 	add	x1, x0, #0xb
ffffff0000091794:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091798:	f90002c1 	str	x1, [x22]
ffffff000009179c:	b9400000 	ldr	w0, [x0]
ffffff00000917a0:	b3403c17 	bfxil	x23, x0, #0, #16
ffffff00000917a4:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000917a8:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000917ac:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000917b0:	aa1703e1 	mov	x1, x23
ffffff00000917b4:	aa1503e0 	mov	x0, x21
ffffff00000917b8:	97ffff74 	bl	ffffff0000091588 <simple_outputi>
ffffff00000917bc:	0b000294 	add	w20, w20, w0
ffffff00000917c0:	aa1803f3 	mov	x19, x24
ffffff00000917c4:	140002e7 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000917c8:	11002022 	add	w2, w1, #0x8
ffffff00000917cc:	b9001ac2 	str	w2, [x22, #24]
ffffff00000917d0:	7100005f 	cmp	w2, #0x0
ffffff00000917d4:	540000ad 	b.le	ffffff00000917e8 <simple_vsprintf+0x148>
ffffff00000917d8:	91002c01 	add	x1, x0, #0xb
ffffff00000917dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000917e0:	f90002c1 	str	x1, [x22]
ffffff00000917e4:	17ffffd2 	b	ffffff000009172c <simple_vsprintf+0x8c>
ffffff00000917e8:	f94006c0 	ldr	x0, [x22, #8]
ffffff00000917ec:	8b21c000 	add	x0, x0, w1, sxtw
ffffff00000917f0:	17ffffcf 	b	ffffff000009172c <simple_vsprintf+0x8c>
ffffff00000917f4:	52800004 	mov	w4, #0x0                   	// #0
ffffff00000917f8:	394000c1 	ldrb	w1, [x6]
ffffff00000917fc:	5100c020 	sub	w0, w1, #0x30
ffffff0000091800:	12001c00 	and	w0, w0, #0xff
ffffff0000091804:	7100241f 	cmp	w0, #0x9
ffffff0000091808:	540000c8 	b.hi	ffffff0000091820 <simple_vsprintf+0x180>  // b.pmore
ffffff000009180c:	0b040884 	add	w4, w4, w4, lsl #2
ffffff0000091810:	5100c021 	sub	w1, w1, #0x30
ffffff0000091814:	0b040424 	add	w4, w1, w4, lsl #1
ffffff0000091818:	910004c6 	add	x6, x6, #0x1
ffffff000009181c:	17fffff7 	b	ffffff00000917f8 <simple_vsprintf+0x158>
ffffff0000091820:	aa0603f3 	mov	x19, x6
ffffff0000091824:	17ffffc4 	b	ffffff0000091734 <simple_vsprintf+0x94>
ffffff0000091828:	7101601f 	cmp	w0, #0x58
ffffff000009182c:	54001420 	b.eq	ffffff0000091ab0 <simple_vsprintf+0x410>  // b.none
ffffff0000091830:	7101881f 	cmp	w0, #0x62
ffffff0000091834:	54005961 	b.ne	ffffff0000092360 <simple_vsprintf+0xcc0>  // b.any
ffffff0000091838:	b9401ac1 	ldr	w1, [x22, #24]
ffffff000009183c:	f94002c0 	ldr	x0, [x22]
ffffff0000091840:	37f80a21 	tbnz	w1, #31, ffffff0000091984 <simple_vsprintf+0x2e4>
ffffff0000091844:	91002c01 	add	x1, x0, #0xb
ffffff0000091848:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009184c:	f90002c1 	str	x1, [x22]
ffffff0000091850:	b9400001 	ldr	w1, [x0]
ffffff0000091854:	b3407c37 	bfxil	x23, x1, #0, #32
ffffff0000091858:	52800c26 	mov	w6, #0x61                  	// #97
ffffff000009185c:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091860:	52800042 	mov	w2, #0x2                   	// #2
ffffff0000091864:	93407c21 	sxtw	x1, w1
ffffff0000091868:	aa1503e0 	mov	x0, x21
ffffff000009186c:	97ffff47 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091870:	0b000294 	add	w20, w20, w0
ffffff0000091874:	140002bb 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091878:	7101d41f 	cmp	w0, #0x75
ffffff000009187c:	540009a0 	b.eq	ffffff00000919b0 <simple_vsprintf+0x310>  // b.none
ffffff0000091880:	54000269 	b.ls	ffffff00000918cc <simple_vsprintf+0x22c>  // b.plast
ffffff0000091884:	7101e01f 	cmp	w0, #0x78
ffffff0000091888:	540056c1 	b.ne	ffffff0000092360 <simple_vsprintf+0xcc0>  // b.any
ffffff000009188c:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091890:	f94002c0 	ldr	x0, [x22]
ffffff0000091894:	37f80f81 	tbnz	w1, #31, ffffff0000091a84 <simple_vsprintf+0x3e4>
ffffff0000091898:	91002c01 	add	x1, x0, #0xb
ffffff000009189c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000918a0:	f90002c1 	str	x1, [x22]
ffffff00000918a4:	b9400001 	ldr	w1, [x0]
ffffff00000918a8:	b3407c37 	bfxil	x23, x1, #0, #32
ffffff00000918ac:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000918b0:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000918b4:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000918b8:	2a0103e1 	mov	w1, w1
ffffff00000918bc:	aa1503e0 	mov	x0, x21
ffffff00000918c0:	97ffff32 	bl	ffffff0000091588 <simple_outputi>
ffffff00000918c4:	0b000294 	add	w20, w20, w0
ffffff00000918c8:	140002a6 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000918cc:	7101c01f 	cmp	w0, #0x70
ffffff00000918d0:	54000a60 	b.eq	ffffff0000091a1c <simple_vsprintf+0x37c>  // b.none
ffffff00000918d4:	7101cc1f 	cmp	w0, #0x73
ffffff00000918d8:	54005441 	b.ne	ffffff0000092360 <simple_vsprintf+0xcc0>  // b.any
ffffff00000918dc:	b9401ac1 	ldr	w1, [x22, #24]
ffffff00000918e0:	f94002c0 	ldr	x0, [x22]
ffffff00000918e4:	37f81541 	tbnz	w1, #31, ffffff0000091b8c <simple_vsprintf+0x4ec>
ffffff00000918e8:	91003c01 	add	x1, x0, #0xf
ffffff00000918ec:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000918f0:	f90002c1 	str	x1, [x22]
ffffff00000918f4:	f9400001 	ldr	x1, [x0]
ffffff00000918f8:	aa0103f7 	mov	x23, x1
ffffff00000918fc:	b40015e1 	cbz	x1, ffffff0000091bb8 <simple_vsprintf+0x518>
ffffff0000091900:	2a0503e3 	mov	w3, w5
ffffff0000091904:	2a0403e2 	mov	w2, w4
ffffff0000091908:	aa1503e0 	mov	x0, x21
ffffff000009190c:	97fffee4 	bl	ffffff000009149c <prints>
ffffff0000091910:	0b000294 	add	w20, w20, w0
ffffff0000091914:	14000293 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091918:	b9401ac1 	ldr	w1, [x22, #24]
ffffff000009191c:	f94002c0 	ldr	x0, [x22]
ffffff0000091920:	37f801c1 	tbnz	w1, #31, ffffff0000091958 <simple_vsprintf+0x2b8>
ffffff0000091924:	91002c01 	add	x1, x0, #0xb
ffffff0000091928:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009192c:	f90002c1 	str	x1, [x22]
ffffff0000091930:	b9400001 	ldr	w1, [x0]
ffffff0000091934:	b3407c37 	bfxil	x23, x1, #0, #32
ffffff0000091938:	52800c26 	mov	w6, #0x61                  	// #97
ffffff000009193c:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091940:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091944:	93407c21 	sxtw	x1, w1
ffffff0000091948:	aa1503e0 	mov	x0, x21
ffffff000009194c:	97ffff0f 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091950:	0b000294 	add	w20, w20, w0
ffffff0000091954:	14000283 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091958:	11002022 	add	w2, w1, #0x8
ffffff000009195c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091960:	7100005f 	cmp	w2, #0x0
ffffff0000091964:	540000ad 	b.le	ffffff0000091978 <simple_vsprintf+0x2d8>
ffffff0000091968:	91002c01 	add	x1, x0, #0xb
ffffff000009196c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091970:	f90002c1 	str	x1, [x22]
ffffff0000091974:	17ffffef 	b	ffffff0000091930 <simple_vsprintf+0x290>
ffffff0000091978:	f94006c0 	ldr	x0, [x22, #8]
ffffff000009197c:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091980:	17ffffec 	b	ffffff0000091930 <simple_vsprintf+0x290>
ffffff0000091984:	11002022 	add	w2, w1, #0x8
ffffff0000091988:	b9001ac2 	str	w2, [x22, #24]
ffffff000009198c:	7100005f 	cmp	w2, #0x0
ffffff0000091990:	540000ad 	b.le	ffffff00000919a4 <simple_vsprintf+0x304>
ffffff0000091994:	91002c01 	add	x1, x0, #0xb
ffffff0000091998:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009199c:	f90002c1 	str	x1, [x22]
ffffff00000919a0:	17ffffac 	b	ffffff0000091850 <simple_vsprintf+0x1b0>
ffffff00000919a4:	f94006c0 	ldr	x0, [x22, #8]
ffffff00000919a8:	8b21c000 	add	x0, x0, w1, sxtw
ffffff00000919ac:	17ffffa9 	b	ffffff0000091850 <simple_vsprintf+0x1b0>
ffffff00000919b0:	b9401ac1 	ldr	w1, [x22, #24]
ffffff00000919b4:	f94002c0 	ldr	x0, [x22]
ffffff00000919b8:	37f801c1 	tbnz	w1, #31, ffffff00000919f0 <simple_vsprintf+0x350>
ffffff00000919bc:	91002c01 	add	x1, x0, #0xb
ffffff00000919c0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000919c4:	f90002c1 	str	x1, [x22]
ffffff00000919c8:	b9400001 	ldr	w1, [x0]
ffffff00000919cc:	b3407c37 	bfxil	x23, x1, #0, #32
ffffff00000919d0:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000919d4:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000919d8:	52800142 	mov	w2, #0xa                   	// #10
ffffff00000919dc:	2a0103e1 	mov	w1, w1
ffffff00000919e0:	aa1503e0 	mov	x0, x21
ffffff00000919e4:	97fffee9 	bl	ffffff0000091588 <simple_outputi>
ffffff00000919e8:	0b000294 	add	w20, w20, w0
ffffff00000919ec:	1400025d 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000919f0:	11002022 	add	w2, w1, #0x8
ffffff00000919f4:	b9001ac2 	str	w2, [x22, #24]
ffffff00000919f8:	7100005f 	cmp	w2, #0x0
ffffff00000919fc:	540000ad 	b.le	ffffff0000091a10 <simple_vsprintf+0x370>
ffffff0000091a00:	91002c01 	add	x1, x0, #0xb
ffffff0000091a04:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091a08:	f90002c1 	str	x1, [x22]
ffffff0000091a0c:	17ffffef 	b	ffffff00000919c8 <simple_vsprintf+0x328>
ffffff0000091a10:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091a14:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091a18:	17ffffec 	b	ffffff00000919c8 <simple_vsprintf+0x328>
ffffff0000091a1c:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091a20:	f94002c0 	ldr	x0, [x22]
ffffff0000091a24:	37f801a1 	tbnz	w1, #31, ffffff0000091a58 <simple_vsprintf+0x3b8>
ffffff0000091a28:	91003c01 	add	x1, x0, #0xf
ffffff0000091a2c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091a30:	f90002c1 	str	x1, [x22]
ffffff0000091a34:	f9400017 	ldr	x23, [x0]
ffffff0000091a38:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091a3c:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091a40:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091a44:	aa1703e1 	mov	x1, x23
ffffff0000091a48:	aa1503e0 	mov	x0, x21
ffffff0000091a4c:	97fffecf 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091a50:	0b000294 	add	w20, w20, w0
ffffff0000091a54:	14000243 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091a58:	11002022 	add	w2, w1, #0x8
ffffff0000091a5c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091a60:	7100005f 	cmp	w2, #0x0
ffffff0000091a64:	540000ad 	b.le	ffffff0000091a78 <simple_vsprintf+0x3d8>
ffffff0000091a68:	91003c01 	add	x1, x0, #0xf
ffffff0000091a6c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091a70:	f90002c1 	str	x1, [x22]
ffffff0000091a74:	17fffff0 	b	ffffff0000091a34 <simple_vsprintf+0x394>
ffffff0000091a78:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091a7c:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091a80:	17ffffed 	b	ffffff0000091a34 <simple_vsprintf+0x394>
ffffff0000091a84:	11002022 	add	w2, w1, #0x8
ffffff0000091a88:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091a8c:	7100005f 	cmp	w2, #0x0
ffffff0000091a90:	540000ad 	b.le	ffffff0000091aa4 <simple_vsprintf+0x404>
ffffff0000091a94:	91002c01 	add	x1, x0, #0xb
ffffff0000091a98:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091a9c:	f90002c1 	str	x1, [x22]
ffffff0000091aa0:	17ffff81 	b	ffffff00000918a4 <simple_vsprintf+0x204>
ffffff0000091aa4:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091aa8:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091aac:	17ffff7e 	b	ffffff00000918a4 <simple_vsprintf+0x204>
ffffff0000091ab0:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091ab4:	f94002c0 	ldr	x0, [x22]
ffffff0000091ab8:	37f801c1 	tbnz	w1, #31, ffffff0000091af0 <simple_vsprintf+0x450>
ffffff0000091abc:	91002c01 	add	x1, x0, #0xb
ffffff0000091ac0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091ac4:	f90002c1 	str	x1, [x22]
ffffff0000091ac8:	b9400001 	ldr	w1, [x0]
ffffff0000091acc:	b3407c37 	bfxil	x23, x1, #0, #32
ffffff0000091ad0:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000091ad4:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091ad8:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091adc:	2a0103e1 	mov	w1, w1
ffffff0000091ae0:	aa1503e0 	mov	x0, x21
ffffff0000091ae4:	97fffea9 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091ae8:	0b000294 	add	w20, w20, w0
ffffff0000091aec:	1400021d 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091af0:	11002022 	add	w2, w1, #0x8
ffffff0000091af4:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091af8:	7100005f 	cmp	w2, #0x0
ffffff0000091afc:	540000ad 	b.le	ffffff0000091b10 <simple_vsprintf+0x470>
ffffff0000091b00:	91002c01 	add	x1, x0, #0xb
ffffff0000091b04:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091b08:	f90002c1 	str	x1, [x22]
ffffff0000091b0c:	17ffffef 	b	ffffff0000091ac8 <simple_vsprintf+0x428>
ffffff0000091b10:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091b14:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091b18:	17ffffec 	b	ffffff0000091ac8 <simple_vsprintf+0x428>
ffffff0000091b1c:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091b20:	f94002c0 	ldr	x0, [x22]
ffffff0000091b24:	37f801e1 	tbnz	w1, #31, ffffff0000091b60 <simple_vsprintf+0x4c0>
ffffff0000091b28:	91002c01 	add	x1, x0, #0xb
ffffff0000091b2c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091b30:	f90002c1 	str	x1, [x22]
ffffff0000091b34:	39400000 	ldrb	w0, [x0]
ffffff0000091b38:	b3401c17 	bfxil	x23, x0, #0, #8
ffffff0000091b3c:	390123e0 	strb	w0, [sp, #72]
ffffff0000091b40:	390127ff 	strb	wzr, [sp, #73]
ffffff0000091b44:	2a0503e3 	mov	w3, w5
ffffff0000091b48:	2a0403e2 	mov	w2, w4
ffffff0000091b4c:	910123e1 	add	x1, sp, #0x48
ffffff0000091b50:	aa1503e0 	mov	x0, x21
ffffff0000091b54:	97fffe52 	bl	ffffff000009149c <prints>
ffffff0000091b58:	0b000294 	add	w20, w20, w0
ffffff0000091b5c:	14000201 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091b60:	11002022 	add	w2, w1, #0x8
ffffff0000091b64:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091b68:	7100005f 	cmp	w2, #0x0
ffffff0000091b6c:	540000ad 	b.le	ffffff0000091b80 <simple_vsprintf+0x4e0>
ffffff0000091b70:	91002c01 	add	x1, x0, #0xb
ffffff0000091b74:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091b78:	f90002c1 	str	x1, [x22]
ffffff0000091b7c:	17ffffee 	b	ffffff0000091b34 <simple_vsprintf+0x494>
ffffff0000091b80:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091b84:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091b88:	17ffffeb 	b	ffffff0000091b34 <simple_vsprintf+0x494>
ffffff0000091b8c:	11002022 	add	w2, w1, #0x8
ffffff0000091b90:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091b94:	7100005f 	cmp	w2, #0x0
ffffff0000091b98:	540000ad 	b.le	ffffff0000091bac <simple_vsprintf+0x50c>
ffffff0000091b9c:	91003c01 	add	x1, x0, #0xf
ffffff0000091ba0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091ba4:	f90002c1 	str	x1, [x22]
ffffff0000091ba8:	17ffff53 	b	ffffff00000918f4 <simple_vsprintf+0x254>
ffffff0000091bac:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091bb0:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091bb4:	17ffff50 	b	ffffff00000918f4 <simple_vsprintf+0x254>
ffffff0000091bb8:	f00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000091bbc:	910aa021 	add	x1, x1, #0x2a8
ffffff0000091bc0:	17ffff50 	b	ffffff0000091900 <simple_vsprintf+0x260>
ffffff0000091bc4:	91000678 	add	x24, x19, #0x1
ffffff0000091bc8:	39400660 	ldrb	w0, [x19, #1]
ffffff0000091bcc:	7101b01f 	cmp	w0, #0x6c
ffffff0000091bd0:	54000f40 	b.eq	ffffff0000091db8 <simple_vsprintf+0x718>  // b.none
ffffff0000091bd4:	540002a9 	b.ls	ffffff0000091c28 <simple_vsprintf+0x588>  // b.plast
ffffff0000091bd8:	7101d41f 	cmp	w0, #0x75
ffffff0000091bdc:	540006c0 	b.eq	ffffff0000091cb4 <simple_vsprintf+0x614>  // b.none
ffffff0000091be0:	7101e01f 	cmp	w0, #0x78
ffffff0000091be4:	540004e1 	b.ne	ffffff0000091c80 <simple_vsprintf+0x5e0>  // b.any
ffffff0000091be8:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091bec:	f94002c0 	ldr	x0, [x22]
ffffff0000091bf0:	37f80981 	tbnz	w1, #31, ffffff0000091d20 <simple_vsprintf+0x680>
ffffff0000091bf4:	91003c01 	add	x1, x0, #0xf
ffffff0000091bf8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091bfc:	f90002c1 	str	x1, [x22]
ffffff0000091c00:	f9400017 	ldr	x23, [x0]
ffffff0000091c04:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091c08:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091c0c:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091c10:	aa1703e1 	mov	x1, x23
ffffff0000091c14:	aa1503e0 	mov	x0, x21
ffffff0000091c18:	97fffe5c 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091c1c:	0b000294 	add	w20, w20, w0
ffffff0000091c20:	aa1803f3 	mov	x19, x24
ffffff0000091c24:	140001cf 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091c28:	7101601f 	cmp	w0, #0x58
ffffff0000091c2c:	54000900 	b.eq	ffffff0000091d4c <simple_vsprintf+0x6ac>  // b.none
ffffff0000091c30:	7101901f 	cmp	w0, #0x64
ffffff0000091c34:	54000221 	b.ne	ffffff0000091c78 <simple_vsprintf+0x5d8>  // b.any
ffffff0000091c38:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091c3c:	f94002c0 	ldr	x0, [x22]
ffffff0000091c40:	37f80241 	tbnz	w1, #31, ffffff0000091c88 <simple_vsprintf+0x5e8>
ffffff0000091c44:	91003c01 	add	x1, x0, #0xf
ffffff0000091c48:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091c4c:	f90002c1 	str	x1, [x22]
ffffff0000091c50:	f9400017 	ldr	x23, [x0]
ffffff0000091c54:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091c58:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091c5c:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091c60:	aa1703e1 	mov	x1, x23
ffffff0000091c64:	aa1503e0 	mov	x0, x21
ffffff0000091c68:	97fffe48 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091c6c:	0b000294 	add	w20, w20, w0
ffffff0000091c70:	aa1803f3 	mov	x19, x24
ffffff0000091c74:	140001bb 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091c78:	aa1803f3 	mov	x19, x24
ffffff0000091c7c:	140001b9 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091c80:	aa1803f3 	mov	x19, x24
ffffff0000091c84:	140001b7 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091c88:	11002022 	add	w2, w1, #0x8
ffffff0000091c8c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091c90:	7100005f 	cmp	w2, #0x0
ffffff0000091c94:	540000ad 	b.le	ffffff0000091ca8 <simple_vsprintf+0x608>
ffffff0000091c98:	91003c01 	add	x1, x0, #0xf
ffffff0000091c9c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091ca0:	f90002c1 	str	x1, [x22]
ffffff0000091ca4:	17ffffeb 	b	ffffff0000091c50 <simple_vsprintf+0x5b0>
ffffff0000091ca8:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091cac:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091cb0:	17ffffe8 	b	ffffff0000091c50 <simple_vsprintf+0x5b0>
ffffff0000091cb4:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091cb8:	f94002c0 	ldr	x0, [x22]
ffffff0000091cbc:	37f801c1 	tbnz	w1, #31, ffffff0000091cf4 <simple_vsprintf+0x654>
ffffff0000091cc0:	91003c01 	add	x1, x0, #0xf
ffffff0000091cc4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091cc8:	f90002c1 	str	x1, [x22]
ffffff0000091ccc:	f9400017 	ldr	x23, [x0]
ffffff0000091cd0:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091cd4:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091cd8:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091cdc:	aa1703e1 	mov	x1, x23
ffffff0000091ce0:	aa1503e0 	mov	x0, x21
ffffff0000091ce4:	97fffe29 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091ce8:	0b000294 	add	w20, w20, w0
ffffff0000091cec:	aa1803f3 	mov	x19, x24
ffffff0000091cf0:	1400019c 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091cf4:	11002022 	add	w2, w1, #0x8
ffffff0000091cf8:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091cfc:	7100005f 	cmp	w2, #0x0
ffffff0000091d00:	540000ad 	b.le	ffffff0000091d14 <simple_vsprintf+0x674>
ffffff0000091d04:	91003c01 	add	x1, x0, #0xf
ffffff0000091d08:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091d0c:	f90002c1 	str	x1, [x22]
ffffff0000091d10:	17ffffef 	b	ffffff0000091ccc <simple_vsprintf+0x62c>
ffffff0000091d14:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091d18:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091d1c:	17ffffec 	b	ffffff0000091ccc <simple_vsprintf+0x62c>
ffffff0000091d20:	11002022 	add	w2, w1, #0x8
ffffff0000091d24:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091d28:	7100005f 	cmp	w2, #0x0
ffffff0000091d2c:	540000ad 	b.le	ffffff0000091d40 <simple_vsprintf+0x6a0>
ffffff0000091d30:	91003c01 	add	x1, x0, #0xf
ffffff0000091d34:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091d38:	f90002c1 	str	x1, [x22]
ffffff0000091d3c:	17ffffb1 	b	ffffff0000091c00 <simple_vsprintf+0x560>
ffffff0000091d40:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091d44:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091d48:	17ffffae 	b	ffffff0000091c00 <simple_vsprintf+0x560>
ffffff0000091d4c:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091d50:	f94002c0 	ldr	x0, [x22]
ffffff0000091d54:	37f801c1 	tbnz	w1, #31, ffffff0000091d8c <simple_vsprintf+0x6ec>
ffffff0000091d58:	91003c01 	add	x1, x0, #0xf
ffffff0000091d5c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091d60:	f90002c1 	str	x1, [x22]
ffffff0000091d64:	f9400017 	ldr	x23, [x0]
ffffff0000091d68:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000091d6c:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091d70:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091d74:	aa1703e1 	mov	x1, x23
ffffff0000091d78:	aa1503e0 	mov	x0, x21
ffffff0000091d7c:	97fffe03 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091d80:	0b000294 	add	w20, w20, w0
ffffff0000091d84:	aa1803f3 	mov	x19, x24
ffffff0000091d88:	14000176 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091d8c:	11002022 	add	w2, w1, #0x8
ffffff0000091d90:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091d94:	7100005f 	cmp	w2, #0x0
ffffff0000091d98:	540000ad 	b.le	ffffff0000091dac <simple_vsprintf+0x70c>
ffffff0000091d9c:	91003c01 	add	x1, x0, #0xf
ffffff0000091da0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091da4:	f90002c1 	str	x1, [x22]
ffffff0000091da8:	17ffffef 	b	ffffff0000091d64 <simple_vsprintf+0x6c4>
ffffff0000091dac:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091db0:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091db4:	17ffffec 	b	ffffff0000091d64 <simple_vsprintf+0x6c4>
ffffff0000091db8:	91000a78 	add	x24, x19, #0x2
ffffff0000091dbc:	39400a60 	ldrb	w0, [x19, #2]
ffffff0000091dc0:	7101d41f 	cmp	w0, #0x75
ffffff0000091dc4:	540006e0 	b.eq	ffffff0000091ea0 <simple_vsprintf+0x800>  // b.none
ffffff0000091dc8:	540002e8 	b.hi	ffffff0000091e24 <simple_vsprintf+0x784>  // b.pmore
ffffff0000091dcc:	7101601f 	cmp	w0, #0x58
ffffff0000091dd0:	54000b40 	b.eq	ffffff0000091f38 <simple_vsprintf+0x898>  // b.none
ffffff0000091dd4:	7101901f 	cmp	w0, #0x64
ffffff0000091dd8:	54000221 	b.ne	ffffff0000091e1c <simple_vsprintf+0x77c>  // b.any
ffffff0000091ddc:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091de0:	f94002c0 	ldr	x0, [x22]
ffffff0000091de4:	37f80481 	tbnz	w1, #31, ffffff0000091e74 <simple_vsprintf+0x7d4>
ffffff0000091de8:	91003c01 	add	x1, x0, #0xf
ffffff0000091dec:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091df0:	f90002c1 	str	x1, [x22]
ffffff0000091df4:	f9400017 	ldr	x23, [x0]
ffffff0000091df8:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091dfc:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091e00:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091e04:	aa1703e1 	mov	x1, x23
ffffff0000091e08:	aa1503e0 	mov	x0, x21
ffffff0000091e0c:	97fffddf 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091e10:	0b000294 	add	w20, w20, w0
ffffff0000091e14:	aa1803f3 	mov	x19, x24
ffffff0000091e18:	14000152 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091e1c:	aa1803f3 	mov	x19, x24
ffffff0000091e20:	14000150 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091e24:	7101e01f 	cmp	w0, #0x78
ffffff0000091e28:	54000221 	b.ne	ffffff0000091e6c <simple_vsprintf+0x7cc>  // b.any
ffffff0000091e2c:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091e30:	f94002c0 	ldr	x0, [x22]
ffffff0000091e34:	37f806c1 	tbnz	w1, #31, ffffff0000091f0c <simple_vsprintf+0x86c>
ffffff0000091e38:	91003c01 	add	x1, x0, #0xf
ffffff0000091e3c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091e40:	f90002c1 	str	x1, [x22]
ffffff0000091e44:	f9400017 	ldr	x23, [x0]
ffffff0000091e48:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091e4c:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091e50:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091e54:	aa1703e1 	mov	x1, x23
ffffff0000091e58:	aa1503e0 	mov	x0, x21
ffffff0000091e5c:	97fffdcb 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091e60:	0b000294 	add	w20, w20, w0
ffffff0000091e64:	aa1803f3 	mov	x19, x24
ffffff0000091e68:	1400013e 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091e6c:	aa1803f3 	mov	x19, x24
ffffff0000091e70:	1400013c 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091e74:	11002022 	add	w2, w1, #0x8
ffffff0000091e78:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091e7c:	7100005f 	cmp	w2, #0x0
ffffff0000091e80:	540000ad 	b.le	ffffff0000091e94 <simple_vsprintf+0x7f4>
ffffff0000091e84:	91003c01 	add	x1, x0, #0xf
ffffff0000091e88:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091e8c:	f90002c1 	str	x1, [x22]
ffffff0000091e90:	17ffffd9 	b	ffffff0000091df4 <simple_vsprintf+0x754>
ffffff0000091e94:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091e98:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091e9c:	17ffffd6 	b	ffffff0000091df4 <simple_vsprintf+0x754>
ffffff0000091ea0:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091ea4:	f94002c0 	ldr	x0, [x22]
ffffff0000091ea8:	37f801c1 	tbnz	w1, #31, ffffff0000091ee0 <simple_vsprintf+0x840>
ffffff0000091eac:	91003c01 	add	x1, x0, #0xf
ffffff0000091eb0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091eb4:	f90002c1 	str	x1, [x22]
ffffff0000091eb8:	f9400017 	ldr	x23, [x0]
ffffff0000091ebc:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091ec0:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091ec4:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091ec8:	aa1703e1 	mov	x1, x23
ffffff0000091ecc:	aa1503e0 	mov	x0, x21
ffffff0000091ed0:	97fffdae 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091ed4:	0b000294 	add	w20, w20, w0
ffffff0000091ed8:	aa1803f3 	mov	x19, x24
ffffff0000091edc:	14000121 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091ee0:	11002022 	add	w2, w1, #0x8
ffffff0000091ee4:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091ee8:	7100005f 	cmp	w2, #0x0
ffffff0000091eec:	540000ad 	b.le	ffffff0000091f00 <simple_vsprintf+0x860>
ffffff0000091ef0:	91003c01 	add	x1, x0, #0xf
ffffff0000091ef4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091ef8:	f90002c1 	str	x1, [x22]
ffffff0000091efc:	17ffffef 	b	ffffff0000091eb8 <simple_vsprintf+0x818>
ffffff0000091f00:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091f04:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091f08:	17ffffec 	b	ffffff0000091eb8 <simple_vsprintf+0x818>
ffffff0000091f0c:	11002022 	add	w2, w1, #0x8
ffffff0000091f10:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091f14:	7100005f 	cmp	w2, #0x0
ffffff0000091f18:	540000ad 	b.le	ffffff0000091f2c <simple_vsprintf+0x88c>
ffffff0000091f1c:	91003c01 	add	x1, x0, #0xf
ffffff0000091f20:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091f24:	f90002c1 	str	x1, [x22]
ffffff0000091f28:	17ffffc7 	b	ffffff0000091e44 <simple_vsprintf+0x7a4>
ffffff0000091f2c:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091f30:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091f34:	17ffffc4 	b	ffffff0000091e44 <simple_vsprintf+0x7a4>
ffffff0000091f38:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091f3c:	f94002c0 	ldr	x0, [x22]
ffffff0000091f40:	37f801c1 	tbnz	w1, #31, ffffff0000091f78 <simple_vsprintf+0x8d8>
ffffff0000091f44:	91003c01 	add	x1, x0, #0xf
ffffff0000091f48:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091f4c:	f90002c1 	str	x1, [x22]
ffffff0000091f50:	f9400017 	ldr	x23, [x0]
ffffff0000091f54:	52800826 	mov	w6, #0x41                  	// #65
ffffff0000091f58:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000091f5c:	52800202 	mov	w2, #0x10                  	// #16
ffffff0000091f60:	aa1703e1 	mov	x1, x23
ffffff0000091f64:	aa1503e0 	mov	x0, x21
ffffff0000091f68:	97fffd88 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091f6c:	0b000294 	add	w20, w20, w0
ffffff0000091f70:	aa1803f3 	mov	x19, x24
ffffff0000091f74:	140000fb 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091f78:	11002022 	add	w2, w1, #0x8
ffffff0000091f7c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000091f80:	7100005f 	cmp	w2, #0x0
ffffff0000091f84:	540000ad 	b.le	ffffff0000091f98 <simple_vsprintf+0x8f8>
ffffff0000091f88:	91003c01 	add	x1, x0, #0xf
ffffff0000091f8c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091f90:	f90002c1 	str	x1, [x22]
ffffff0000091f94:	17ffffef 	b	ffffff0000091f50 <simple_vsprintf+0x8b0>
ffffff0000091f98:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000091f9c:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000091fa0:	17ffffec 	b	ffffff0000091f50 <simple_vsprintf+0x8b0>
ffffff0000091fa4:	7101601f 	cmp	w0, #0x58
ffffff0000091fa8:	54000940 	b.eq	ffffff00000920d0 <simple_vsprintf+0xa30>  // b.none
ffffff0000091fac:	7101901f 	cmp	w0, #0x64
ffffff0000091fb0:	54000241 	b.ne	ffffff0000091ff8 <simple_vsprintf+0x958>  // b.any
ffffff0000091fb4:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000091fb8:	f94002c0 	ldr	x0, [x22]
ffffff0000091fbc:	37f80261 	tbnz	w1, #31, ffffff0000092008 <simple_vsprintf+0x968>
ffffff0000091fc0:	91002c01 	add	x1, x0, #0xb
ffffff0000091fc4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000091fc8:	f90002c1 	str	x1, [x22]
ffffff0000091fcc:	79c00001 	ldrsh	w1, [x0]
ffffff0000091fd0:	b3403c37 	bfxil	x23, x1, #0, #16
ffffff0000091fd4:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000091fd8:	52800023 	mov	w3, #0x1                   	// #1
ffffff0000091fdc:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000091fe0:	93403c21 	sxth	x1, w1
ffffff0000091fe4:	aa1503e0 	mov	x0, x21
ffffff0000091fe8:	97fffd68 	bl	ffffff0000091588 <simple_outputi>
ffffff0000091fec:	0b000294 	add	w20, w20, w0
ffffff0000091ff0:	aa1803f3 	mov	x19, x24
ffffff0000091ff4:	140000db 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000091ff8:	aa1803f3 	mov	x19, x24
ffffff0000091ffc:	140000d9 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092000:	aa1803f3 	mov	x19, x24
ffffff0000092004:	140000d7 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092008:	11002022 	add	w2, w1, #0x8
ffffff000009200c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000092010:	7100005f 	cmp	w2, #0x0
ffffff0000092014:	540000ad 	b.le	ffffff0000092028 <simple_vsprintf+0x988>
ffffff0000092018:	91002c01 	add	x1, x0, #0xb
ffffff000009201c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092020:	f90002c1 	str	x1, [x22]
ffffff0000092024:	17ffffea 	b	ffffff0000091fcc <simple_vsprintf+0x92c>
ffffff0000092028:	f94006c0 	ldr	x0, [x22, #8]
ffffff000009202c:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000092030:	17ffffe7 	b	ffffff0000091fcc <simple_vsprintf+0x92c>
ffffff0000092034:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000092038:	f94002c0 	ldr	x0, [x22]
ffffff000009203c:	37f801e1 	tbnz	w1, #31, ffffff0000092078 <simple_vsprintf+0x9d8>
ffffff0000092040:	91002c01 	add	x1, x0, #0xb
ffffff0000092044:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092048:	f90002c1 	str	x1, [x22]
ffffff000009204c:	b9400000 	ldr	w0, [x0]
ffffff0000092050:	b3403c17 	bfxil	x23, x0, #0, #16
ffffff0000092054:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000092058:	52800003 	mov	w3, #0x0                   	// #0
ffffff000009205c:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000092060:	aa1703e1 	mov	x1, x23
ffffff0000092064:	aa1503e0 	mov	x0, x21
ffffff0000092068:	97fffd48 	bl	ffffff0000091588 <simple_outputi>
ffffff000009206c:	0b000294 	add	w20, w20, w0
ffffff0000092070:	aa1803f3 	mov	x19, x24
ffffff0000092074:	140000bb 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092078:	11002022 	add	w2, w1, #0x8
ffffff000009207c:	b9001ac2 	str	w2, [x22, #24]
ffffff0000092080:	7100005f 	cmp	w2, #0x0
ffffff0000092084:	540000ad 	b.le	ffffff0000092098 <simple_vsprintf+0x9f8>
ffffff0000092088:	91002c01 	add	x1, x0, #0xb
ffffff000009208c:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092090:	f90002c1 	str	x1, [x22]
ffffff0000092094:	17ffffee 	b	ffffff000009204c <simple_vsprintf+0x9ac>
ffffff0000092098:	f94006c0 	ldr	x0, [x22, #8]
ffffff000009209c:	8b21c000 	add	x0, x0, w1, sxtw
ffffff00000920a0:	17ffffeb 	b	ffffff000009204c <simple_vsprintf+0x9ac>
ffffff00000920a4:	11002022 	add	w2, w1, #0x8
ffffff00000920a8:	b9001ac2 	str	w2, [x22, #24]
ffffff00000920ac:	7100005f 	cmp	w2, #0x0
ffffff00000920b0:	540000ad 	b.le	ffffff00000920c4 <simple_vsprintf+0xa24>
ffffff00000920b4:	91002c01 	add	x1, x0, #0xb
ffffff00000920b8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000920bc:	f90002c1 	str	x1, [x22]
ffffff00000920c0:	17fffdb7 	b	ffffff000009179c <simple_vsprintf+0xfc>
ffffff00000920c4:	f94006c0 	ldr	x0, [x22, #8]
ffffff00000920c8:	8b21c000 	add	x0, x0, w1, sxtw
ffffff00000920cc:	17fffdb4 	b	ffffff000009179c <simple_vsprintf+0xfc>
ffffff00000920d0:	b9401ac1 	ldr	w1, [x22, #24]
ffffff00000920d4:	f94002c0 	ldr	x0, [x22]
ffffff00000920d8:	37f801e1 	tbnz	w1, #31, ffffff0000092114 <simple_vsprintf+0xa74>
ffffff00000920dc:	91002c01 	add	x1, x0, #0xb
ffffff00000920e0:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000920e4:	f90002c1 	str	x1, [x22]
ffffff00000920e8:	b9400000 	ldr	w0, [x0]
ffffff00000920ec:	b3403c17 	bfxil	x23, x0, #0, #16
ffffff00000920f0:	52800826 	mov	w6, #0x41                  	// #65
ffffff00000920f4:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000920f8:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000920fc:	aa1703e1 	mov	x1, x23
ffffff0000092100:	aa1503e0 	mov	x0, x21
ffffff0000092104:	97fffd21 	bl	ffffff0000091588 <simple_outputi>
ffffff0000092108:	0b000294 	add	w20, w20, w0
ffffff000009210c:	aa1803f3 	mov	x19, x24
ffffff0000092110:	14000094 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092114:	11002022 	add	w2, w1, #0x8
ffffff0000092118:	b9001ac2 	str	w2, [x22, #24]
ffffff000009211c:	7100005f 	cmp	w2, #0x0
ffffff0000092120:	540000ad 	b.le	ffffff0000092134 <simple_vsprintf+0xa94>
ffffff0000092124:	91002c01 	add	x1, x0, #0xb
ffffff0000092128:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009212c:	f90002c1 	str	x1, [x22]
ffffff0000092130:	17ffffee 	b	ffffff00000920e8 <simple_vsprintf+0xa48>
ffffff0000092134:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000092138:	8b21c000 	add	x0, x0, w1, sxtw
ffffff000009213c:	17ffffeb 	b	ffffff00000920e8 <simple_vsprintf+0xa48>
ffffff0000092140:	91000a78 	add	x24, x19, #0x2
ffffff0000092144:	39400a60 	ldrb	w0, [x19, #2]
ffffff0000092148:	7101d41f 	cmp	w0, #0x75
ffffff000009214c:	54000720 	b.eq	ffffff0000092230 <simple_vsprintf+0xb90>  // b.none
ffffff0000092150:	54000308 	b.hi	ffffff00000921b0 <simple_vsprintf+0xb10>  // b.pmore
ffffff0000092154:	7101601f 	cmp	w0, #0x58
ffffff0000092158:	54000ba0 	b.eq	ffffff00000922cc <simple_vsprintf+0xc2c>  // b.none
ffffff000009215c:	7101901f 	cmp	w0, #0x64
ffffff0000092160:	54000241 	b.ne	ffffff00000921a8 <simple_vsprintf+0xb08>  // b.any
ffffff0000092164:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000092168:	f94002c0 	ldr	x0, [x22]
ffffff000009216c:	37f804c1 	tbnz	w1, #31, ffffff0000092204 <simple_vsprintf+0xb64>
ffffff0000092170:	91002c01 	add	x1, x0, #0xb
ffffff0000092174:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092178:	f90002c1 	str	x1, [x22]
ffffff000009217c:	39c00001 	ldrsb	w1, [x0]
ffffff0000092180:	b3401c37 	bfxil	x23, x1, #0, #8
ffffff0000092184:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000092188:	52800023 	mov	w3, #0x1                   	// #1
ffffff000009218c:	52800142 	mov	w2, #0xa                   	// #10
ffffff0000092190:	93401c21 	sxtb	x1, w1
ffffff0000092194:	aa1503e0 	mov	x0, x21
ffffff0000092198:	97fffcfc 	bl	ffffff0000091588 <simple_outputi>
ffffff000009219c:	0b000294 	add	w20, w20, w0
ffffff00000921a0:	aa1803f3 	mov	x19, x24
ffffff00000921a4:	1400006f 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000921a8:	aa1803f3 	mov	x19, x24
ffffff00000921ac:	1400006d 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000921b0:	7101e01f 	cmp	w0, #0x78
ffffff00000921b4:	54000241 	b.ne	ffffff00000921fc <simple_vsprintf+0xb5c>  // b.any
ffffff00000921b8:	b9401ac1 	ldr	w1, [x22, #24]
ffffff00000921bc:	f94002c0 	ldr	x0, [x22]
ffffff00000921c0:	37f80701 	tbnz	w1, #31, ffffff00000922a0 <simple_vsprintf+0xc00>
ffffff00000921c4:	91002c01 	add	x1, x0, #0xb
ffffff00000921c8:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000921cc:	f90002c1 	str	x1, [x22]
ffffff00000921d0:	b9400000 	ldr	w0, [x0]
ffffff00000921d4:	b3401c17 	bfxil	x23, x0, #0, #8
ffffff00000921d8:	52800c26 	mov	w6, #0x61                  	// #97
ffffff00000921dc:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000921e0:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000921e4:	aa1703e1 	mov	x1, x23
ffffff00000921e8:	aa1503e0 	mov	x0, x21
ffffff00000921ec:	97fffce7 	bl	ffffff0000091588 <simple_outputi>
ffffff00000921f0:	0b000294 	add	w20, w20, w0
ffffff00000921f4:	aa1803f3 	mov	x19, x24
ffffff00000921f8:	1400005a 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff00000921fc:	aa1803f3 	mov	x19, x24
ffffff0000092200:	14000058 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092204:	11002022 	add	w2, w1, #0x8
ffffff0000092208:	b9001ac2 	str	w2, [x22, #24]
ffffff000009220c:	7100005f 	cmp	w2, #0x0
ffffff0000092210:	540000ad 	b.le	ffffff0000092224 <simple_vsprintf+0xb84>
ffffff0000092214:	91002c01 	add	x1, x0, #0xb
ffffff0000092218:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009221c:	f90002c1 	str	x1, [x22]
ffffff0000092220:	17ffffd7 	b	ffffff000009217c <simple_vsprintf+0xadc>
ffffff0000092224:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000092228:	8b21c000 	add	x0, x0, w1, sxtw
ffffff000009222c:	17ffffd4 	b	ffffff000009217c <simple_vsprintf+0xadc>
ffffff0000092230:	b9401ac1 	ldr	w1, [x22, #24]
ffffff0000092234:	f94002c0 	ldr	x0, [x22]
ffffff0000092238:	37f801e1 	tbnz	w1, #31, ffffff0000092274 <simple_vsprintf+0xbd4>
ffffff000009223c:	91002c01 	add	x1, x0, #0xb
ffffff0000092240:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092244:	f90002c1 	str	x1, [x22]
ffffff0000092248:	b9400000 	ldr	w0, [x0]
ffffff000009224c:	b3401c17 	bfxil	x23, x0, #0, #8
ffffff0000092250:	52800c26 	mov	w6, #0x61                  	// #97
ffffff0000092254:	52800003 	mov	w3, #0x0                   	// #0
ffffff0000092258:	52800142 	mov	w2, #0xa                   	// #10
ffffff000009225c:	aa1703e1 	mov	x1, x23
ffffff0000092260:	aa1503e0 	mov	x0, x21
ffffff0000092264:	97fffcc9 	bl	ffffff0000091588 <simple_outputi>
ffffff0000092268:	0b000294 	add	w20, w20, w0
ffffff000009226c:	aa1803f3 	mov	x19, x24
ffffff0000092270:	1400003c 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092274:	11002022 	add	w2, w1, #0x8
ffffff0000092278:	b9001ac2 	str	w2, [x22, #24]
ffffff000009227c:	7100005f 	cmp	w2, #0x0
ffffff0000092280:	540000ad 	b.le	ffffff0000092294 <simple_vsprintf+0xbf4>
ffffff0000092284:	91002c01 	add	x1, x0, #0xb
ffffff0000092288:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff000009228c:	f90002c1 	str	x1, [x22]
ffffff0000092290:	17ffffee 	b	ffffff0000092248 <simple_vsprintf+0xba8>
ffffff0000092294:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000092298:	8b21c000 	add	x0, x0, w1, sxtw
ffffff000009229c:	17ffffeb 	b	ffffff0000092248 <simple_vsprintf+0xba8>
ffffff00000922a0:	11002022 	add	w2, w1, #0x8
ffffff00000922a4:	b9001ac2 	str	w2, [x22, #24]
ffffff00000922a8:	7100005f 	cmp	w2, #0x0
ffffff00000922ac:	540000ad 	b.le	ffffff00000922c0 <simple_vsprintf+0xc20>
ffffff00000922b0:	91002c01 	add	x1, x0, #0xb
ffffff00000922b4:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000922b8:	f90002c1 	str	x1, [x22]
ffffff00000922bc:	17ffffc5 	b	ffffff00000921d0 <simple_vsprintf+0xb30>
ffffff00000922c0:	f94006c0 	ldr	x0, [x22, #8]
ffffff00000922c4:	8b21c000 	add	x0, x0, w1, sxtw
ffffff00000922c8:	17ffffc2 	b	ffffff00000921d0 <simple_vsprintf+0xb30>
ffffff00000922cc:	b9401ac1 	ldr	w1, [x22, #24]
ffffff00000922d0:	f94002c0 	ldr	x0, [x22]
ffffff00000922d4:	37f801e1 	tbnz	w1, #31, ffffff0000092310 <simple_vsprintf+0xc70>
ffffff00000922d8:	91002c01 	add	x1, x0, #0xb
ffffff00000922dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff00000922e0:	f90002c1 	str	x1, [x22]
ffffff00000922e4:	b9400000 	ldr	w0, [x0]
ffffff00000922e8:	b3401c17 	bfxil	x23, x0, #0, #8
ffffff00000922ec:	52800826 	mov	w6, #0x41                  	// #65
ffffff00000922f0:	52800003 	mov	w3, #0x0                   	// #0
ffffff00000922f4:	52800202 	mov	w2, #0x10                  	// #16
ffffff00000922f8:	aa1703e1 	mov	x1, x23
ffffff00000922fc:	aa1503e0 	mov	x0, x21
ffffff0000092300:	97fffca2 	bl	ffffff0000091588 <simple_outputi>
ffffff0000092304:	0b000294 	add	w20, w20, w0
ffffff0000092308:	aa1803f3 	mov	x19, x24
ffffff000009230c:	14000015 	b	ffffff0000092360 <simple_vsprintf+0xcc0>
ffffff0000092310:	11002022 	add	w2, w1, #0x8
ffffff0000092314:	b9001ac2 	str	w2, [x22, #24]
ffffff0000092318:	7100005f 	cmp	w2, #0x0
ffffff000009231c:	540000ad 	b.le	ffffff0000092330 <simple_vsprintf+0xc90>
ffffff0000092320:	91002c01 	add	x1, x0, #0xb
ffffff0000092324:	927df021 	and	x1, x1, #0xfffffffffffffff8
ffffff0000092328:	f90002c1 	str	x1, [x22]
ffffff000009232c:	17ffffee 	b	ffffff00000922e4 <simple_vsprintf+0xc44>
ffffff0000092330:	f94006c0 	ldr	x0, [x22, #8]
ffffff0000092334:	8b21c000 	add	x0, x0, w1, sxtw
ffffff0000092338:	17ffffeb 	b	ffffff00000922e4 <simple_vsprintf+0xc44>
ffffff000009233c:	aa0603f3 	mov	x19, x6
ffffff0000092340:	1400000d 	b	ffffff0000092374 <simple_vsprintf+0xcd4>
ffffff0000092344:	528001a1 	mov	w1, #0xd                   	// #13
ffffff0000092348:	aa1503e0 	mov	x0, x21
ffffff000009234c:	97fffc46 	bl	ffffff0000091464 <simple_outputchar>
ffffff0000092350:	39400261 	ldrb	w1, [x19]
ffffff0000092354:	aa1503e0 	mov	x0, x21
ffffff0000092358:	97fffc43 	bl	ffffff0000091464 <simple_outputchar>
ffffff000009235c:	11000694 	add	w20, w20, #0x1
ffffff0000092360:	91000673 	add	x19, x19, #0x1
ffffff0000092364:	39400260 	ldrb	w0, [x19]
ffffff0000092368:	340000e0 	cbz	w0, ffffff0000092384 <simple_vsprintf+0xce4>
ffffff000009236c:	7100941f 	cmp	w0, #0x25
ffffff0000092370:	54ff9ac0 	b.eq	ffffff00000916c8 <simple_vsprintf+0x28>  // b.none
ffffff0000092374:	39400260 	ldrb	w0, [x19]
ffffff0000092378:	7100281f 	cmp	w0, #0xa
ffffff000009237c:	54fffea1 	b.ne	ffffff0000092350 <simple_vsprintf+0xcb0>  // b.any
ffffff0000092380:	17fffff1 	b	ffffff0000092344 <simple_vsprintf+0xca4>
ffffff0000092384:	b4000075 	cbz	x21, ffffff0000092390 <simple_vsprintf+0xcf0>
ffffff0000092388:	f94002a0 	ldr	x0, [x21]
ffffff000009238c:	3900001f 	strb	wzr, [x0]
ffffff0000092390:	2a1403e0 	mov	w0, w20
ffffff0000092394:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000092398:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff000009239c:	a94363f7 	ldp	x23, x24, [sp, #48]
ffffff00000923a0:	a8c57bfd 	ldp	x29, x30, [sp], #80
ffffff00000923a4:	d65f03c0 	ret

ffffff00000923a8 <printk>:
ffffff00000923a8:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
ffffff00000923ac:	910003fd 	mov	x29, sp
ffffff00000923b0:	f9002fe1 	str	x1, [sp, #88]
ffffff00000923b4:	f90033e2 	str	x2, [sp, #96]
ffffff00000923b8:	f90037e3 	str	x3, [sp, #104]
ffffff00000923bc:	f9003be4 	str	x4, [sp, #112]
ffffff00000923c0:	f9003fe5 	str	x5, [sp, #120]
ffffff00000923c4:	f90043e6 	str	x6, [sp, #128]
ffffff00000923c8:	f90047e7 	str	x7, [sp, #136]
ffffff00000923cc:	910243e1 	add	x1, sp, #0x90
ffffff00000923d0:	f9001be1 	str	x1, [sp, #48]
ffffff00000923d4:	f9001fe1 	str	x1, [sp, #56]
ffffff00000923d8:	910143e1 	add	x1, sp, #0x50
ffffff00000923dc:	f90023e1 	str	x1, [sp, #64]
ffffff00000923e0:	128006e1 	mov	w1, #0xffffffc8            	// #-56
ffffff00000923e4:	b9004be1 	str	w1, [sp, #72]
ffffff00000923e8:	b9004fff 	str	wzr, [sp, #76]
ffffff00000923ec:	a9430fe2 	ldp	x2, x3, [sp, #48]
ffffff00000923f0:	a9010fe2 	stp	x2, x3, [sp, #16]
ffffff00000923f4:	a9440fe2 	ldp	x2, x3, [sp, #64]
ffffff00000923f8:	a9020fe2 	stp	x2, x3, [sp, #32]
ffffff00000923fc:	910043e2 	add	x2, sp, #0x10
ffffff0000092400:	aa0003e1 	mov	x1, x0
ffffff0000092404:	d2800000 	mov	x0, #0x0                   	// #0
ffffff0000092408:	97fffca6 	bl	ffffff00000916a0 <simple_vsprintf>
ffffff000009240c:	a8c97bfd 	ldp	x29, x30, [sp], #144
ffffff0000092410:	d65f03c0 	ret

ffffff0000092414 <page_to_virt>:
ffffff0000092414:	f9401001 	ldr	x1, [x0, #32]
ffffff0000092418:	b4000141 	cbz	x1, ffffff0000092440 <page_to_virt+0x2c>
ffffff000009241c:	f9400c22 	ldr	x2, [x1, #24]
ffffff0000092420:	cb020000 	sub	x0, x0, x2
ffffff0000092424:	9343fc00 	asr	x0, x0, #3
ffffff0000092428:	b202e7e2 	mov	x2, #0xcccccccccccccccc    	// #-3689348814741910324
ffffff000009242c:	f29999a2 	movk	x2, #0xcccd
ffffff0000092430:	9b027c00 	mul	x0, x0, x2
ffffff0000092434:	f9400021 	ldr	x1, [x1]
ffffff0000092438:	8b003020 	add	x0, x1, x0, lsl #12
ffffff000009243c:	d65f03c0 	ret
ffffff0000092440:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000092444:	910003fd 	mov	x29, sp
ffffff0000092448:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009244c:	910ac063 	add	x3, x3, #0x2b0
ffffff0000092450:	52801302 	mov	w2, #0x98                  	// #152
ffffff0000092454:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092458:	91116021 	add	x1, x1, #0x458
ffffff000009245c:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092460:	9103e000 	add	x0, x0, #0xf8
ffffff0000092464:	97ffffd1 	bl	ffffff00000923a8 <printk>
ffffff0000092468:	14000000 	b	ffffff0000092468 <page_to_virt+0x54>

ffffff000009246c <virt_to_page>:
ffffff000009246c:	aa0003e3 	mov	x3, x0
ffffff0000092470:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092474:	14000002 	b	ffffff000009247c <virt_to_page+0x10>
ffffff0000092478:	11000400 	add	w0, w0, #0x1
ffffff000009247c:	d0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092480:	f9402c21 	ldr	x1, [x1, #88]
ffffff0000092484:	b9400021 	ldr	w1, [x1]
ffffff0000092488:	6b00003f 	cmp	w1, w0
ffffff000009248c:	5400038d 	b.le	ffffff00000924fc <virt_to_page+0x90>
ffffff0000092490:	93407c02 	sxtw	x2, w0
ffffff0000092494:	8b20c441 	add	x1, x2, w0, sxtw #1
ffffff0000092498:	d37df021 	lsl	x1, x1, #3
ffffff000009249c:	cb020021 	sub	x1, x1, x2
ffffff00000924a0:	d37cec21 	lsl	x1, x1, #4
ffffff00000924a4:	d0000062 	adrp	x2, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000924a8:	f9401042 	ldr	x2, [x2, #32]
ffffff00000924ac:	f8616842 	ldr	x2, [x2, x1]
ffffff00000924b0:	eb03005f 	cmp	x2, x3
ffffff00000924b4:	54fffe28 	b.hi	ffffff0000092478 <virt_to_page+0xc>  // b.pmore
ffffff00000924b8:	93407c04 	sxtw	x4, w0
ffffff00000924bc:	8b20c481 	add	x1, x4, w0, sxtw #1
ffffff00000924c0:	d37df021 	lsl	x1, x1, #3
ffffff00000924c4:	cb040021 	sub	x1, x1, x4
ffffff00000924c8:	d0000064 	adrp	x4, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000924cc:	f9401084 	ldr	x4, [x4, #32]
ffffff00000924d0:	8b011081 	add	x1, x4, x1, lsl #4
ffffff00000924d4:	f9400421 	ldr	x1, [x1, #8]
ffffff00000924d8:	8b010042 	add	x2, x2, x1
ffffff00000924dc:	eb03005f 	cmp	x2, x3
ffffff00000924e0:	54fffcc9 	b.ls	ffffff0000092478 <virt_to_page+0xc>  // b.plast
ffffff00000924e4:	93407c02 	sxtw	x2, w0
ffffff00000924e8:	8b20c441 	add	x1, x2, w0, sxtw #1
ffffff00000924ec:	d37df021 	lsl	x1, x1, #3
ffffff00000924f0:	cb020021 	sub	x1, x1, x2
ffffff00000924f4:	8b011081 	add	x1, x4, x1, lsl #4
ffffff00000924f8:	14000002 	b	ffffff0000092500 <virt_to_page+0x94>
ffffff00000924fc:	d2800001 	mov	x1, #0x0                   	// #0
ffffff0000092500:	b4000101 	cbz	x1, ffffff0000092520 <virt_to_page+0xb4>
ffffff0000092504:	f9400c20 	ldr	x0, [x1, #24]
ffffff0000092508:	f9400021 	ldr	x1, [x1]
ffffff000009250c:	cb010061 	sub	x1, x3, x1
ffffff0000092510:	d34cfc21 	lsr	x1, x1, #12
ffffff0000092514:	8b010821 	add	x1, x1, x1, lsl #2
ffffff0000092518:	8b010c00 	add	x0, x0, x1, lsl #3
ffffff000009251c:	d65f03c0 	ret
ffffff0000092520:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000092524:	910003fd 	mov	x29, sp
ffffff0000092528:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009252c:	910ac063 	add	x3, x3, #0x2b0
ffffff0000092530:	528015a2 	mov	w2, #0xad                  	// #173
ffffff0000092534:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092538:	91116021 	add	x1, x1, #0x458
ffffff000009253c:	91004021 	add	x1, x1, #0x10
ffffff0000092540:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092544:	9103e000 	add	x0, x0, #0xf8
ffffff0000092548:	97ffff98 	bl	ffffff00000923a8 <printk>
ffffff000009254c:	14000000 	b	ffffff000009254c <virt_to_page+0xe0>

ffffff0000092550 <get_buddy_chunk>:
ffffff0000092550:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000092554:	910003fd 	mov	x29, sp
ffffff0000092558:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff000009255c:	aa0003f4 	mov	x20, x0
ffffff0000092560:	aa0103f3 	mov	x19, x1
ffffff0000092564:	aa0103e0 	mov	x0, x1
ffffff0000092568:	97ffffab 	bl	ffffff0000092414 <page_to_virt>
ffffff000009256c:	b9401661 	ldr	w1, [x19, #20]
ffffff0000092570:	11003022 	add	w2, w1, #0xc
ffffff0000092574:	d2800021 	mov	x1, #0x1                   	// #1
ffffff0000092578:	9ac22021 	lsl	x1, x1, x2
ffffff000009257c:	ca000020 	eor	x0, x1, x0
ffffff0000092580:	f9400281 	ldr	x1, [x20]
ffffff0000092584:	eb00003f 	cmp	x1, x0
ffffff0000092588:	54000128 	b.hi	ffffff00000925ac <get_buddy_chunk+0x5c>  // b.pmore
ffffff000009258c:	f9400682 	ldr	x2, [x20, #8]
ffffff0000092590:	8b020021 	add	x1, x1, x2
ffffff0000092594:	eb00003f 	cmp	x1, x0
ffffff0000092598:	540000e9 	b.ls	ffffff00000925b4 <get_buddy_chunk+0x64>  // b.plast
ffffff000009259c:	97ffffb4 	bl	ffffff000009246c <virt_to_page>
ffffff00000925a0:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff00000925a4:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000925a8:	d65f03c0 	ret
ffffff00000925ac:	d2800000 	mov	x0, #0x0                   	// #0
ffffff00000925b0:	17fffffc 	b	ffffff00000925a0 <get_buddy_chunk+0x50>
ffffff00000925b4:	d2800000 	mov	x0, #0x0                   	// #0
ffffff00000925b8:	17fffffa 	b	ffffff00000925a0 <get_buddy_chunk+0x50>

ffffff00000925bc <split_page>:
ffffff00000925bc:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
ffffff00000925c0:	910003fd 	mov	x29, sp
ffffff00000925c4:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000925c8:	aa0003f4 	mov	x20, x0
ffffff00000925cc:	aa0203f3 	mov	x19, x2
ffffff00000925d0:	b9401440 	ldr	w0, [x2, #20]
ffffff00000925d4:	eb20c03f 	cmp	x1, w0, sxtw
ffffff00000925d8:	540005c0 	b.eq	ffffff0000092690 <split_page+0xd4>  // b.none
ffffff00000925dc:	f90013f5 	str	x21, [sp, #32]
ffffff00000925e0:	aa0103f5 	mov	x21, x1
ffffff00000925e4:	51000400 	sub	w0, w0, #0x1
ffffff00000925e8:	b9001440 	str	w0, [x2, #20]
ffffff00000925ec:	aa0203e1 	mov	x1, x2
ffffff00000925f0:	aa1403e0 	mov	x0, x20
ffffff00000925f4:	97ffffd7 	bl	ffffff0000092550 <get_buddy_chunk>
ffffff00000925f8:	b900101f 	str	wzr, [x0, #16]
ffffff00000925fc:	b9401662 	ldr	w2, [x19, #20]
ffffff0000092600:	b9001402 	str	w2, [x0, #20]
ffffff0000092604:	93407c41 	sxtw	x1, w2
ffffff0000092608:	937f7c42 	sbfiz	x2, x2, #1, #32
ffffff000009260c:	8b010043 	add	x3, x2, x1
ffffff0000092610:	d37df063 	lsl	x3, x3, #3
ffffff0000092614:	91008063 	add	x3, x3, #0x20
ffffff0000092618:	8b030283 	add	x3, x20, x3
ffffff000009261c:	8b010044 	add	x4, x2, x1
ffffff0000092620:	8b040e84 	add	x4, x20, x4, lsl #3
ffffff0000092624:	f9401484 	ldr	x4, [x4, #40]
ffffff0000092628:	f9000404 	str	x4, [x0, #8]
ffffff000009262c:	f9000003 	str	x3, [x0]
ffffff0000092630:	8b010043 	add	x3, x2, x1
ffffff0000092634:	8b030e83 	add	x3, x20, x3, lsl #3
ffffff0000092638:	f9401463 	ldr	x3, [x3, #40]
ffffff000009263c:	f9000060 	str	x0, [x3]
ffffff0000092640:	8b010042 	add	x2, x2, x1
ffffff0000092644:	8b020e82 	add	x2, x20, x2, lsl #3
ffffff0000092648:	f9001440 	str	x0, [x2, #40]
ffffff000009264c:	b9801662 	ldrsw	x2, [x19, #20]
ffffff0000092650:	d37ff840 	lsl	x0, x2, #1
ffffff0000092654:	8b020001 	add	x1, x0, x2
ffffff0000092658:	8b010e81 	add	x1, x20, x1, lsl #3
ffffff000009265c:	f9401821 	ldr	x1, [x1, #48]
ffffff0000092660:	8b020000 	add	x0, x0, x2
ffffff0000092664:	8b000e80 	add	x0, x20, x0, lsl #3
ffffff0000092668:	91000421 	add	x1, x1, #0x1
ffffff000009266c:	f9001801 	str	x1, [x0, #48]
ffffff0000092670:	aa1303e2 	mov	x2, x19
ffffff0000092674:	aa1503e1 	mov	x1, x21
ffffff0000092678:	aa1403e0 	mov	x0, x20
ffffff000009267c:	97ffffd0 	bl	ffffff00000925bc <split_page>
ffffff0000092680:	f94013f5 	ldr	x21, [sp, #32]
ffffff0000092684:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000092688:	a8c37bfd 	ldp	x29, x30, [sp], #48
ffffff000009268c:	d65f03c0 	ret
ffffff0000092690:	aa0203e0 	mov	x0, x2
ffffff0000092694:	17fffffc 	b	ffffff0000092684 <split_page+0xc8>

ffffff0000092698 <buddy_get_pages>:
ffffff0000092698:	aa0103e3 	mov	x3, x1
ffffff000009269c:	f100347f 	cmp	x3, #0xd
ffffff00000926a0:	540003c8 	b.hi	ffffff0000092718 <buddy_get_pages+0x80>  // b.pmore
ffffff00000926a4:	8b030462 	add	x2, x3, x3, lsl #1
ffffff00000926a8:	8b020c02 	add	x2, x0, x2, lsl #3
ffffff00000926ac:	f9401842 	ldr	x2, [x2, #48]
ffffff00000926b0:	b5000062 	cbnz	x2, ffffff00000926bc <buddy_get_pages+0x24>
ffffff00000926b4:	91000463 	add	x3, x3, #0x1
ffffff00000926b8:	17fffff9 	b	ffffff000009269c <buddy_get_pages+0x4>
ffffff00000926bc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000926c0:	910003fd 	mov	x29, sp
ffffff00000926c4:	d37ff864 	lsl	x4, x3, #1
ffffff00000926c8:	8b030085 	add	x5, x4, x3
ffffff00000926cc:	8b050c05 	add	x5, x0, x5, lsl #3
ffffff00000926d0:	f94014a2 	ldr	x2, [x5, #40]
ffffff00000926d4:	f9400047 	ldr	x7, [x2]
ffffff00000926d8:	f9400446 	ldr	x6, [x2, #8]
ffffff00000926dc:	f90004e6 	str	x6, [x7, #8]
ffffff00000926e0:	f9400047 	ldr	x7, [x2]
ffffff00000926e4:	f90000c7 	str	x7, [x6]
ffffff00000926e8:	f9000442 	str	x2, [x2, #8]
ffffff00000926ec:	f9000042 	str	x2, [x2]
ffffff00000926f0:	f94018a5 	ldr	x5, [x5, #48]
ffffff00000926f4:	8b030083 	add	x3, x4, x3
ffffff00000926f8:	8b030c03 	add	x3, x0, x3, lsl #3
ffffff00000926fc:	d10004a4 	sub	x4, x5, #0x1
ffffff0000092700:	f9001864 	str	x4, [x3, #48]
ffffff0000092704:	97ffffae 	bl	ffffff00000925bc <split_page>
ffffff0000092708:	52800021 	mov	w1, #0x1                   	// #1
ffffff000009270c:	b9001001 	str	w1, [x0, #16]
ffffff0000092710:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000092714:	d65f03c0 	ret
ffffff0000092718:	d2800000 	mov	x0, #0x0                   	// #0
ffffff000009271c:	d65f03c0 	ret

ffffff0000092720 <merge_page>:
ffffff0000092720:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000092724:	910003fd 	mov	x29, sp
ffffff0000092728:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff000009272c:	aa0003f4 	mov	x20, x0
ffffff0000092730:	aa0103f3 	mov	x19, x1
ffffff0000092734:	97ffff87 	bl	ffffff0000092550 <get_buddy_chunk>
ffffff0000092738:	b4000120 	cbz	x0, ffffff000009275c <merge_page+0x3c>
ffffff000009273c:	b9401402 	ldr	w2, [x0, #20]
ffffff0000092740:	b9401661 	ldr	w1, [x19, #20]
ffffff0000092744:	6b01005f 	cmp	w2, w1
ffffff0000092748:	540000a1 	b.ne	ffffff000009275c <merge_page+0x3c>  // b.any
ffffff000009274c:	7100343f 	cmp	w1, #0xd
ffffff0000092750:	54000060 	b.eq	ffffff000009275c <merge_page+0x3c>  // b.none
ffffff0000092754:	b9401001 	ldr	w1, [x0, #16]
ffffff0000092758:	340000a1 	cbz	w1, ffffff000009276c <merge_page+0x4c>
ffffff000009275c:	aa1303e0 	mov	x0, x19
ffffff0000092760:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000092764:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000092768:	d65f03c0 	ret
ffffff000009276c:	f9400002 	ldr	x2, [x0]
ffffff0000092770:	f9400401 	ldr	x1, [x0, #8]
ffffff0000092774:	f9000441 	str	x1, [x2, #8]
ffffff0000092778:	f9400002 	ldr	x2, [x0]
ffffff000009277c:	f9000022 	str	x2, [x1]
ffffff0000092780:	f9000400 	str	x0, [x0, #8]
ffffff0000092784:	f9000000 	str	x0, [x0]
ffffff0000092788:	b9801403 	ldrsw	x3, [x0, #20]
ffffff000009278c:	d37ff861 	lsl	x1, x3, #1
ffffff0000092790:	8b030022 	add	x2, x1, x3
ffffff0000092794:	8b020e82 	add	x2, x20, x2, lsl #3
ffffff0000092798:	f9401842 	ldr	x2, [x2, #48]
ffffff000009279c:	8b030021 	add	x1, x1, x3
ffffff00000927a0:	8b010e81 	add	x1, x20, x1, lsl #3
ffffff00000927a4:	d1000442 	sub	x2, x2, #0x1
ffffff00000927a8:	f9001822 	str	x2, [x1, #48]
ffffff00000927ac:	eb00027f 	cmp	x19, x0
ffffff00000927b0:	9a809261 	csel	x1, x19, x0, ls  // ls = plast
ffffff00000927b4:	b9401420 	ldr	w0, [x1, #20]
ffffff00000927b8:	11000400 	add	w0, w0, #0x1
ffffff00000927bc:	b9001420 	str	w0, [x1, #20]
ffffff00000927c0:	aa1403e0 	mov	x0, x20
ffffff00000927c4:	97ffffd7 	bl	ffffff0000092720 <merge_page>
ffffff00000927c8:	aa0003f3 	mov	x19, x0
ffffff00000927cc:	17ffffe4 	b	ffffff000009275c <merge_page+0x3c>

ffffff00000927d0 <buddy_free_pages>:
ffffff00000927d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000927d4:	910003fd 	mov	x29, sp
ffffff00000927d8:	f9000bf3 	str	x19, [sp, #16]
ffffff00000927dc:	aa0003f3 	mov	x19, x0
ffffff00000927e0:	f9000421 	str	x1, [x1, #8]
ffffff00000927e4:	f9000021 	str	x1, [x1]
ffffff00000927e8:	b900103f 	str	wzr, [x1, #16]
ffffff00000927ec:	97ffffcd 	bl	ffffff0000092720 <merge_page>
ffffff00000927f0:	b9801403 	ldrsw	x3, [x0, #20]
ffffff00000927f4:	d37ff861 	lsl	x1, x3, #1
ffffff00000927f8:	8b030022 	add	x2, x1, x3
ffffff00000927fc:	d37df042 	lsl	x2, x2, #3
ffffff0000092800:	91008042 	add	x2, x2, #0x20
ffffff0000092804:	8b020262 	add	x2, x19, x2
ffffff0000092808:	8b030024 	add	x4, x1, x3
ffffff000009280c:	8b040e64 	add	x4, x19, x4, lsl #3
ffffff0000092810:	f9401484 	ldr	x4, [x4, #40]
ffffff0000092814:	f9000404 	str	x4, [x0, #8]
ffffff0000092818:	f9000002 	str	x2, [x0]
ffffff000009281c:	8b030022 	add	x2, x1, x3
ffffff0000092820:	8b020e62 	add	x2, x19, x2, lsl #3
ffffff0000092824:	f9401442 	ldr	x2, [x2, #40]
ffffff0000092828:	f9000040 	str	x0, [x2]
ffffff000009282c:	8b030021 	add	x1, x1, x3
ffffff0000092830:	8b010e61 	add	x1, x19, x1, lsl #3
ffffff0000092834:	f9001420 	str	x0, [x1, #40]
ffffff0000092838:	b9801402 	ldrsw	x2, [x0, #20]
ffffff000009283c:	d37ff840 	lsl	x0, x2, #1
ffffff0000092840:	8b020001 	add	x1, x0, x2
ffffff0000092844:	8b010e61 	add	x1, x19, x1, lsl #3
ffffff0000092848:	f9401821 	ldr	x1, [x1, #48]
ffffff000009284c:	8b020000 	add	x0, x0, x2
ffffff0000092850:	8b000e73 	add	x19, x19, x0, lsl #3
ffffff0000092854:	91000420 	add	x0, x1, #0x1
ffffff0000092858:	f9001a60 	str	x0, [x19, #48]
ffffff000009285c:	f9400bf3 	ldr	x19, [sp, #16]
ffffff0000092860:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000092864:	d65f03c0 	ret

ffffff0000092868 <init_buddy>:
ffffff0000092868:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
ffffff000009286c:	910003fd 	mov	x29, sp
ffffff0000092870:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff0000092874:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff0000092878:	aa0003f3 	mov	x19, x0
ffffff000009287c:	aa0103f5 	mov	x21, x1
ffffff0000092880:	aa0303f4 	mov	x20, x3
ffffff0000092884:	f9000002 	str	x2, [x0]
ffffff0000092888:	f9000c01 	str	x1, [x0, #24]
ffffff000009288c:	d374cc60 	lsl	x0, x3, #12
ffffff0000092890:	f9000660 	str	x0, [x19, #8]
ffffff0000092894:	f9000a63 	str	x3, [x19, #16]
ffffff0000092898:	52800000 	mov	w0, #0x0                   	// #0
ffffff000009289c:	7100341f 	cmp	w0, #0xd
ffffff00000928a0:	54000208 	b.hi	ffffff00000928e0 <init_buddy+0x78>  // b.pmore
ffffff00000928a4:	93407c01 	sxtw	x1, w0
ffffff00000928a8:	937f7c02 	sbfiz	x2, x0, #1, #32
ffffff00000928ac:	8b010043 	add	x3, x2, x1
ffffff00000928b0:	8b030e63 	add	x3, x19, x3, lsl #3
ffffff00000928b4:	f900187f 	str	xzr, [x3, #48]
ffffff00000928b8:	8b010044 	add	x4, x2, x1
ffffff00000928bc:	d37df084 	lsl	x4, x4, #3
ffffff00000928c0:	91008084 	add	x4, x4, #0x20
ffffff00000928c4:	8b040264 	add	x4, x19, x4
ffffff00000928c8:	8b010043 	add	x3, x2, x1
ffffff00000928cc:	8b030e63 	add	x3, x19, x3, lsl #3
ffffff00000928d0:	f9001464 	str	x4, [x3, #40]
ffffff00000928d4:	f9001064 	str	x4, [x3, #32]
ffffff00000928d8:	11000400 	add	w0, w0, #0x1
ffffff00000928dc:	17fffff0 	b	ffffff000009289c <init_buddy+0x34>
ffffff00000928e0:	8b140a82 	add	x2, x20, x20, lsl #2
ffffff00000928e4:	d37df042 	lsl	x2, x2, #3
ffffff00000928e8:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000928ec:	aa1503e0 	mov	x0, x21
ffffff00000928f0:	97fff696 	bl	ffffff0000090348 <memset>
ffffff00000928f4:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000928f8:	14000008 	b	ffffff0000092918 <init_buddy+0xb0>
ffffff00000928fc:	8b000800 	add	x0, x0, x0, lsl #2
ffffff0000092900:	8b000ea0 	add	x0, x21, x0, lsl #3
ffffff0000092904:	52800022 	mov	w2, #0x1                   	// #1
ffffff0000092908:	b9001002 	str	w2, [x0, #16]
ffffff000009290c:	b900141f 	str	wzr, [x0, #20]
ffffff0000092910:	f9001013 	str	x19, [x0, #32]
ffffff0000092914:	0b020021 	add	w1, w1, w2
ffffff0000092918:	93407c20 	sxtw	x0, w1
ffffff000009291c:	eb21c29f 	cmp	x20, w1, sxtw
ffffff0000092920:	54fffee8 	b.hi	ffffff00000928fc <init_buddy+0x94>  // b.pmore
ffffff0000092924:	52800016 	mov	w22, #0x0                   	// #0
ffffff0000092928:	93407ec1 	sxtw	x1, w22
ffffff000009292c:	eb36c29f 	cmp	x20, w22, sxtw
ffffff0000092930:	540000e9 	b.ls	ffffff000009294c <init_buddy+0xe4>  // b.plast
ffffff0000092934:	8b010821 	add	x1, x1, x1, lsl #2
ffffff0000092938:	8b010ea1 	add	x1, x21, x1, lsl #3
ffffff000009293c:	aa1303e0 	mov	x0, x19
ffffff0000092940:	97ffffa4 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000092944:	110006d6 	add	w22, w22, #0x1
ffffff0000092948:	17fffff8 	b	ffffff0000092928 <init_buddy+0xc0>
ffffff000009294c:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000092950:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000092954:	a8c37bfd 	ldp	x29, x30, [sp], #48
ffffff0000092958:	d65f03c0 	ret

ffffff000009295c <get_free_mem_size_from_buddy>:
ffffff000009295c:	aa0003e5 	mov	x5, x0
ffffff0000092960:	d2800000 	mov	x0, #0x0                   	// #0
ffffff0000092964:	52800001 	mov	w1, #0x0                   	// #0
ffffff0000092968:	7100343f 	cmp	w1, #0xd
ffffff000009296c:	54000188 	b.hi	ffffff000009299c <get_free_mem_size_from_buddy+0x40>  // b.pmore
ffffff0000092970:	52820002 	mov	w2, #0x1000                	// #4096
ffffff0000092974:	1ac12042 	lsl	w2, w2, w1
ffffff0000092978:	93407c42 	sxtw	x2, w2
ffffff000009297c:	910080a3 	add	x3, x5, #0x20
ffffff0000092980:	937f7c24 	sbfiz	x4, x1, #1, #32
ffffff0000092984:	8b21c084 	add	x4, x4, w1, sxtw
ffffff0000092988:	8b040c63 	add	x3, x3, x4, lsl #3
ffffff000009298c:	f9400863 	ldr	x3, [x3, #16]
ffffff0000092990:	9b020060 	madd	x0, x3, x2, x0
ffffff0000092994:	11000421 	add	w1, w1, #0x1
ffffff0000092998:	17fffff4 	b	ffffff0000092968 <get_free_mem_size_from_buddy+0xc>
ffffff000009299c:	d65f03c0 	ret

ffffff00000929a0 <lab2_test_buddy>:
ffffff00000929a0:	a9b67bfd 	stp	x29, x30, [sp, #-160]!
ffffff00000929a4:	910003fd 	mov	x29, sp
ffffff00000929a8:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000929ac:	a9025bf5 	stp	x21, x22, [sp, #32]
ffffff00000929b0:	d0000073 	adrp	x19, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000929b4:	f9401273 	ldr	x19, [x19, #32]
ffffff00000929b8:	aa1303e0 	mov	x0, x19
ffffff00000929bc:	97ffffe8 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff00000929c0:	f9400a61 	ldr	x1, [x19, #16]
ffffff00000929c4:	eb40303f 	cmp	x1, x0, lsr #12
ffffff00000929c8:	54000500 	b.eq	ffffff0000092a68 <lab2_test_buddy+0xc8>  // b.none
ffffff00000929cc:	d00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000929d0:	910b4084 	add	x4, x4, #0x2d0
ffffff00000929d4:	528019a3 	mov	w3, #0xcd                  	// #205
ffffff00000929d8:	d00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000929dc:	910c2042 	add	x2, x2, #0x308
ffffff00000929e0:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000929e4:	910b0021 	add	x1, x1, #0x2c0
ffffff00000929e8:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000929ec:	9101a000 	add	x0, x0, #0x68
ffffff00000929f0:	97fffe6e 	bl	ffffff00000923a8 <printk>
ffffff00000929f4:	d28001e1 	mov	x1, #0xf                   	// #15
ffffff00000929f8:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000929fc:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092a00:	97ffff26 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092a04:	b40003e0 	cbz	x0, ffffff0000092a80 <lab2_test_buddy+0xe0>
ffffff0000092a08:	d00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a0c:	910ce084 	add	x4, x4, #0x338
ffffff0000092a10:	52801a23 	mov	w3, #0xd1                  	// #209
ffffff0000092a14:	d00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a18:	910c2042 	add	x2, x2, #0x308
ffffff0000092a1c:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a20:	910c8021 	add	x1, x1, #0x320
ffffff0000092a24:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a28:	9101a000 	add	x0, x0, #0x68
ffffff0000092a2c:	97fffe5f 	bl	ffffff00000923a8 <printk>
ffffff0000092a30:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092a34:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092a38:	f9400815 	ldr	x21, [x0, #16]
ffffff0000092a3c:	d374ceb5 	lsl	x21, x21, #12
ffffff0000092a40:	d2800001 	mov	x1, #0x0                   	// #0
ffffff0000092a44:	97ffff15 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092a48:	aa0003f3 	mov	x19, x0
ffffff0000092a4c:	b4000300 	cbz	x0, ffffff0000092aac <lab2_test_buddy+0x10c>
ffffff0000092a50:	b9401400 	ldr	w0, [x0, #20]
ffffff0000092a54:	35000400 	cbnz	w0, ffffff0000092ad4 <lab2_test_buddy+0x134>
ffffff0000092a58:	b9401260 	ldr	w0, [x19, #16]
ffffff0000092a5c:	340003e0 	cbz	w0, ffffff0000092ad8 <lab2_test_buddy+0x138>
ffffff0000092a60:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092a64:	1400001d 	b	ffffff0000092ad8 <lab2_test_buddy+0x138>
ffffff0000092a68:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a6c:	910b0021 	add	x1, x1, #0x2c0
ffffff0000092a70:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a74:	91008000 	add	x0, x0, #0x20
ffffff0000092a78:	97fffe4c 	bl	ffffff00000923a8 <printk>
ffffff0000092a7c:	17ffffde 	b	ffffff00000929f4 <lab2_test_buddy+0x54>
ffffff0000092a80:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
ffffff0000092a84:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092a88:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092a8c:	97ffff03 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092a90:	b5fffbc0 	cbnz	x0, ffffff0000092a08 <lab2_test_buddy+0x68>
ffffff0000092a94:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092a98:	910c8021 	add	x1, x1, #0x320
ffffff0000092a9c:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092aa0:	91008000 	add	x0, x0, #0x20
ffffff0000092aa4:	97fffe41 	bl	ffffff00000923a8 <printk>
ffffff0000092aa8:	17ffffe2 	b	ffffff0000092a30 <lab2_test_buddy+0x90>
ffffff0000092aac:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092ab0:	910e6063 	add	x3, x3, #0x398
ffffff0000092ab4:	52801b22 	mov	w2, #0xd9                  	// #217
ffffff0000092ab8:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092abc:	91116021 	add	x1, x1, #0x458
ffffff0000092ac0:	91008021 	add	x1, x1, #0x20
ffffff0000092ac4:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092ac8:	9103e000 	add	x0, x0, #0xf8
ffffff0000092acc:	97fffe37 	bl	ffffff00000923a8 <printk>
ffffff0000092ad0:	14000000 	b	ffffff0000092ad0 <lab2_test_buddy+0x130>
ffffff0000092ad4:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092ad8:	d14006b4 	sub	x20, x21, #0x1, lsl #12
ffffff0000092adc:	350002c0 	cbnz	w0, ffffff0000092b34 <lab2_test_buddy+0x194>
ffffff0000092ae0:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092ae4:	12001c14 	and	w20, w0, #0xff
ffffff0000092ae8:	aa1303e1 	mov	x1, x19
ffffff0000092aec:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092af0:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092af4:	97ffff37 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000092af8:	35000314 	cbnz	w20, ffffff0000092b58 <lab2_test_buddy+0x1b8>
ffffff0000092afc:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092b00:	340003e0 	cbz	w0, ffffff0000092b7c <lab2_test_buddy+0x1dc>
ffffff0000092b04:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b08:	910ea021 	add	x1, x1, #0x3a8
ffffff0000092b0c:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b10:	91008000 	add	x0, x0, #0x20
ffffff0000092b14:	97fffe25 	bl	ffffff00000923a8 <printk>
ffffff0000092b18:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092b1c:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092b20:	f9400815 	ldr	x21, [x0, #16]
ffffff0000092b24:	d374ceb5 	lsl	x21, x21, #12
ffffff0000092b28:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000092b2c:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092b30:	1400003b 	b	ffffff0000092c1c <lab2_test_buddy+0x27c>
ffffff0000092b34:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092b38:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092b3c:	97ffff88 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092b40:	eb14001f 	cmp	x0, x20
ffffff0000092b44:	54000060 	b.eq	ffffff0000092b50 <lab2_test_buddy+0x1b0>  // b.none
ffffff0000092b48:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092b4c:	17ffffe6 	b	ffffff0000092ae4 <lab2_test_buddy+0x144>
ffffff0000092b50:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092b54:	17ffffe4 	b	ffffff0000092ae4 <lab2_test_buddy+0x144>
ffffff0000092b58:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092b5c:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092b60:	97ffff7f 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092b64:	eb15001f 	cmp	x0, x21
ffffff0000092b68:	54000060 	b.eq	ffffff0000092b74 <lab2_test_buddy+0x1d4>  // b.none
ffffff0000092b6c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092b70:	17ffffe4 	b	ffffff0000092b00 <lab2_test_buddy+0x160>
ffffff0000092b74:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092b78:	17ffffe2 	b	ffffff0000092b00 <lab2_test_buddy+0x160>
ffffff0000092b7c:	d00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b80:	91068084 	add	x4, x4, #0x1a0
ffffff0000092b84:	52801c03 	mov	w3, #0xe0                  	// #224
ffffff0000092b88:	d00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b8c:	910c2042 	add	x2, x2, #0x308
ffffff0000092b90:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b94:	910ea021 	add	x1, x1, #0x3a8
ffffff0000092b98:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092b9c:	9101a000 	add	x0, x0, #0x68
ffffff0000092ba0:	97fffe02 	bl	ffffff00000923a8 <printk>
ffffff0000092ba4:	17ffffdd 	b	ffffff0000092b18 <lab2_test_buddy+0x178>
ffffff0000092ba8:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092bac:	910e6063 	add	x3, x3, #0x398
ffffff0000092bb0:	52801d02 	mov	w2, #0xe8                  	// #232
ffffff0000092bb4:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092bb8:	91116021 	add	x1, x1, #0x458
ffffff0000092bbc:	91008021 	add	x1, x1, #0x20
ffffff0000092bc0:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092bc4:	9103e000 	add	x0, x0, #0xf8
ffffff0000092bc8:	97fffdf8 	bl	ffffff00000923a8 <printk>
ffffff0000092bcc:	14000000 	b	ffffff0000092bcc <lab2_test_buddy+0x22c>
ffffff0000092bd0:	b94012c0 	ldr	w0, [x22, #16]
ffffff0000092bd4:	34000080 	cbz	w0, ffffff0000092be4 <lab2_test_buddy+0x244>
ffffff0000092bd8:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092bdc:	14000002 	b	ffffff0000092be4 <lab2_test_buddy+0x244>
ffffff0000092be0:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092be4:	52820013 	mov	w19, #0x1000                	// #4096
ffffff0000092be8:	1ad42273 	lsl	w19, w19, w20
ffffff0000092bec:	cb33c2b3 	sub	x19, x21, w19, sxtw
ffffff0000092bf0:	35000320 	cbnz	w0, ffffff0000092c54 <lab2_test_buddy+0x2b4>
ffffff0000092bf4:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092bf8:	12001c13 	and	w19, w0, #0xff
ffffff0000092bfc:	aa1603e1 	mov	x1, x22
ffffff0000092c00:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092c04:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092c08:	97fffef2 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000092c0c:	35000373 	cbnz	w19, ffffff0000092c78 <lab2_test_buddy+0x2d8>
ffffff0000092c10:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092c14:	12001e73 	and	w19, w19, #0xff
ffffff0000092c18:	11000694 	add	w20, w20, #0x1
ffffff0000092c1c:	7100369f 	cmp	w20, #0xd
ffffff0000092c20:	540003e8 	b.hi	ffffff0000092c9c <lab2_test_buddy+0x2fc>  // b.pmore
ffffff0000092c24:	93407e81 	sxtw	x1, w20
ffffff0000092c28:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092c2c:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092c30:	97fffe9a 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092c34:	aa0003f6 	mov	x22, x0
ffffff0000092c38:	b4fffb80 	cbz	x0, ffffff0000092ba8 <lab2_test_buddy+0x208>
ffffff0000092c3c:	34fffd33 	cbz	w19, ffffff0000092be0 <lab2_test_buddy+0x240>
ffffff0000092c40:	b9401400 	ldr	w0, [x0, #20]
ffffff0000092c44:	6b14001f 	cmp	w0, w20
ffffff0000092c48:	54fffc40 	b.eq	ffffff0000092bd0 <lab2_test_buddy+0x230>  // b.none
ffffff0000092c4c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092c50:	17ffffe5 	b	ffffff0000092be4 <lab2_test_buddy+0x244>
ffffff0000092c54:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092c58:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092c5c:	97ffff40 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092c60:	eb13001f 	cmp	x0, x19
ffffff0000092c64:	54000060 	b.eq	ffffff0000092c70 <lab2_test_buddy+0x2d0>  // b.none
ffffff0000092c68:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092c6c:	17ffffe3 	b	ffffff0000092bf8 <lab2_test_buddy+0x258>
ffffff0000092c70:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092c74:	17ffffe1 	b	ffffff0000092bf8 <lab2_test_buddy+0x258>
ffffff0000092c78:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092c7c:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092c80:	97ffff37 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092c84:	eb15001f 	cmp	x0, x21
ffffff0000092c88:	54000060 	b.eq	ffffff0000092c94 <lab2_test_buddy+0x2f4>  // b.none
ffffff0000092c8c:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092c90:	17ffffe1 	b	ffffff0000092c14 <lab2_test_buddy+0x274>
ffffff0000092c94:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092c98:	17ffffdf 	b	ffffff0000092c14 <lab2_test_buddy+0x274>
ffffff0000092c9c:	528001b4 	mov	w20, #0xd                   	// #13
ffffff0000092ca0:	1400001e 	b	ffffff0000092d18 <lab2_test_buddy+0x378>
ffffff0000092ca4:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092ca8:	910e6063 	add	x3, x3, #0x398
ffffff0000092cac:	52801e42 	mov	w2, #0xf2                  	// #242
ffffff0000092cb0:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092cb4:	91116021 	add	x1, x1, #0x458
ffffff0000092cb8:	91008021 	add	x1, x1, #0x20
ffffff0000092cbc:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092cc0:	9103e000 	add	x0, x0, #0xf8
ffffff0000092cc4:	97fffdb9 	bl	ffffff00000923a8 <printk>
ffffff0000092cc8:	14000000 	b	ffffff0000092cc8 <lab2_test_buddy+0x328>
ffffff0000092ccc:	b94012c0 	ldr	w0, [x22, #16]
ffffff0000092cd0:	34000080 	cbz	w0, ffffff0000092ce0 <lab2_test_buddy+0x340>
ffffff0000092cd4:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092cd8:	14000002 	b	ffffff0000092ce0 <lab2_test_buddy+0x340>
ffffff0000092cdc:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092ce0:	52820013 	mov	w19, #0x1000                	// #4096
ffffff0000092ce4:	1ad42273 	lsl	w19, w19, w20
ffffff0000092ce8:	cb33c2b3 	sub	x19, x21, w19, sxtw
ffffff0000092cec:	35000300 	cbnz	w0, ffffff0000092d4c <lab2_test_buddy+0x3ac>
ffffff0000092cf0:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092cf4:	12001c13 	and	w19, w0, #0xff
ffffff0000092cf8:	aa1603e1 	mov	x1, x22
ffffff0000092cfc:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092d00:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092d04:	97fffeb3 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000092d08:	35000353 	cbnz	w19, ffffff0000092d70 <lab2_test_buddy+0x3d0>
ffffff0000092d0c:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092d10:	12001e73 	and	w19, w19, #0xff
ffffff0000092d14:	51000694 	sub	w20, w20, #0x1
ffffff0000092d18:	37f803f4 	tbnz	w20, #31, ffffff0000092d94 <lab2_test_buddy+0x3f4>
ffffff0000092d1c:	93407e81 	sxtw	x1, w20
ffffff0000092d20:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092d24:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092d28:	97fffe5c 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092d2c:	aa0003f6 	mov	x22, x0
ffffff0000092d30:	b4fffba0 	cbz	x0, ffffff0000092ca4 <lab2_test_buddy+0x304>
ffffff0000092d34:	34fffd53 	cbz	w19, ffffff0000092cdc <lab2_test_buddy+0x33c>
ffffff0000092d38:	b9401400 	ldr	w0, [x0, #20]
ffffff0000092d3c:	6b14001f 	cmp	w0, w20
ffffff0000092d40:	54fffc60 	b.eq	ffffff0000092ccc <lab2_test_buddy+0x32c>  // b.none
ffffff0000092d44:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092d48:	17ffffe6 	b	ffffff0000092ce0 <lab2_test_buddy+0x340>
ffffff0000092d4c:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092d50:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092d54:	97ffff02 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092d58:	eb13001f 	cmp	x0, x19
ffffff0000092d5c:	54000060 	b.eq	ffffff0000092d68 <lab2_test_buddy+0x3c8>  // b.none
ffffff0000092d60:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092d64:	17ffffe4 	b	ffffff0000092cf4 <lab2_test_buddy+0x354>
ffffff0000092d68:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092d6c:	17ffffe2 	b	ffffff0000092cf4 <lab2_test_buddy+0x354>
ffffff0000092d70:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092d74:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092d78:	97fffef9 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092d7c:	eb15001f 	cmp	x0, x21
ffffff0000092d80:	54000060 	b.eq	ffffff0000092d8c <lab2_test_buddy+0x3ec>  // b.none
ffffff0000092d84:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092d88:	17ffffe2 	b	ffffff0000092d10 <lab2_test_buddy+0x370>
ffffff0000092d8c:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092d90:	17ffffe0 	b	ffffff0000092d10 <lab2_test_buddy+0x370>
ffffff0000092d94:	340001b3 	cbz	w19, ffffff0000092dc8 <lab2_test_buddy+0x428>
ffffff0000092d98:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092d9c:	910f0021 	add	x1, x1, #0x3c0
ffffff0000092da0:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092da4:	91008000 	add	x0, x0, #0x20
ffffff0000092da8:	97fffd80 	bl	ffffff00000923a8 <printk>
ffffff0000092dac:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092db0:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092db4:	f9400815 	ldr	x21, [x0, #16]
ffffff0000092db8:	d374ceb5 	lsl	x21, x21, #12
ffffff0000092dbc:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000092dc0:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092dc4:	1400001e 	b	ffffff0000092e3c <lab2_test_buddy+0x49c>
ffffff0000092dc8:	d00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092dcc:	91068084 	add	x4, x4, #0x1a0
ffffff0000092dd0:	52801f43 	mov	w3, #0xfa                  	// #250
ffffff0000092dd4:	d00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092dd8:	910c2042 	add	x2, x2, #0x308
ffffff0000092ddc:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092de0:	910f0021 	add	x1, x1, #0x3c0
ffffff0000092de4:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092de8:	9101a000 	add	x0, x0, #0x68
ffffff0000092dec:	97fffd6f 	bl	ffffff00000923a8 <printk>
ffffff0000092df0:	17ffffef 	b	ffffff0000092dac <lab2_test_buddy+0x40c>
ffffff0000092df4:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092df8:	910f8063 	add	x3, x3, #0x3e0
ffffff0000092dfc:	52802042 	mov	w2, #0x102                 	// #258
ffffff0000092e00:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092e04:	91116021 	add	x1, x1, #0x458
ffffff0000092e08:	91008021 	add	x1, x1, #0x20
ffffff0000092e0c:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092e10:	9103e000 	add	x0, x0, #0xf8
ffffff0000092e14:	97fffd65 	bl	ffffff00000923a8 <printk>
ffffff0000092e18:	14000000 	b	ffffff0000092e18 <lab2_test_buddy+0x478>
ffffff0000092e1c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092e20:	52820001 	mov	w1, #0x1000                	// #4096
ffffff0000092e24:	1ad42021 	lsl	w1, w1, w20
ffffff0000092e28:	cb21c2b5 	sub	x21, x21, w1, sxtw
ffffff0000092e2c:	350002c0 	cbnz	w0, ffffff0000092e84 <lab2_test_buddy+0x4e4>
ffffff0000092e30:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092e34:	12001e73 	and	w19, w19, #0xff
ffffff0000092e38:	11000694 	add	w20, w20, #0x1
ffffff0000092e3c:	7100369f 	cmp	w20, #0xd
ffffff0000092e40:	54000348 	b.hi	ffffff0000092ea8 <lab2_test_buddy+0x508>  // b.pmore
ffffff0000092e44:	93407e96 	sxtw	x22, w20
ffffff0000092e48:	aa1603e1 	mov	x1, x22
ffffff0000092e4c:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092e50:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092e54:	97fffe11 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092e58:	9100c3e1 	add	x1, sp, #0x30
ffffff0000092e5c:	f8367820 	str	x0, [x1, x22, lsl #3]
ffffff0000092e60:	b4fffca0 	cbz	x0, ffffff0000092df4 <lab2_test_buddy+0x454>
ffffff0000092e64:	34fffdd3 	cbz	w19, ffffff0000092e1c <lab2_test_buddy+0x47c>
ffffff0000092e68:	b9401400 	ldr	w0, [x0, #20]
ffffff0000092e6c:	6b14001f 	cmp	w0, w20
ffffff0000092e70:	54000060 	b.eq	ffffff0000092e7c <lab2_test_buddy+0x4dc>  // b.none
ffffff0000092e74:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092e78:	17ffffea 	b	ffffff0000092e20 <lab2_test_buddy+0x480>
ffffff0000092e7c:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092e80:	17ffffe8 	b	ffffff0000092e20 <lab2_test_buddy+0x480>
ffffff0000092e84:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092e88:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092e8c:	97fffeb4 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092e90:	eb15001f 	cmp	x0, x21
ffffff0000092e94:	54000060 	b.eq	ffffff0000092ea0 <lab2_test_buddy+0x500>  // b.none
ffffff0000092e98:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092e9c:	17ffffe6 	b	ffffff0000092e34 <lab2_test_buddy+0x494>
ffffff0000092ea0:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092ea4:	17ffffe4 	b	ffffff0000092e34 <lab2_test_buddy+0x494>
ffffff0000092ea8:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000092eac:	14000009 	b	ffffff0000092ed0 <lab2_test_buddy+0x530>
ffffff0000092eb0:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092eb4:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092eb8:	97fffea9 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092ebc:	eb15001f 	cmp	x0, x21
ffffff0000092ec0:	54000220 	b.eq	ffffff0000092f04 <lab2_test_buddy+0x564>  // b.none
ffffff0000092ec4:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092ec8:	12001e73 	and	w19, w19, #0xff
ffffff0000092ecc:	11000694 	add	w20, w20, #0x1
ffffff0000092ed0:	7100369f 	cmp	w20, #0xd
ffffff0000092ed4:	540001c8 	b.hi	ffffff0000092f0c <lab2_test_buddy+0x56c>  // b.pmore
ffffff0000092ed8:	9100c3e0 	add	x0, sp, #0x30
ffffff0000092edc:	f874d801 	ldr	x1, [x0, w20, sxtw #3]
ffffff0000092ee0:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092ee4:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092ee8:	97fffe3a 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000092eec:	52820000 	mov	w0, #0x1000                	// #4096
ffffff0000092ef0:	1ad42000 	lsl	w0, w0, w20
ffffff0000092ef4:	8b20c2b5 	add	x21, x21, w0, sxtw
ffffff0000092ef8:	35fffdd3 	cbnz	w19, ffffff0000092eb0 <lab2_test_buddy+0x510>
ffffff0000092efc:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000092f00:	17fffff2 	b	ffffff0000092ec8 <lab2_test_buddy+0x528>
ffffff0000092f04:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000092f08:	17fffff0 	b	ffffff0000092ec8 <lab2_test_buddy+0x528>
ffffff0000092f0c:	340001b3 	cbz	w19, ffffff0000092f40 <lab2_test_buddy+0x5a0>
ffffff0000092f10:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f14:	910fe021 	add	x1, x1, #0x3f8
ffffff0000092f18:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f1c:	91008000 	add	x0, x0, #0x20
ffffff0000092f20:	97fffd22 	bl	ffffff00000923a8 <printk>
ffffff0000092f24:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092f28:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092f2c:	f9400813 	ldr	x19, [x0, #16]
ffffff0000092f30:	d374ce73 	lsl	x19, x19, #12
ffffff0000092f34:	52800015 	mov	w21, #0x0                   	// #0
ffffff0000092f38:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000092f3c:	1400001c 	b	ffffff0000092fac <lab2_test_buddy+0x60c>
ffffff0000092f40:	d00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f44:	91068084 	add	x4, x4, #0x1a0
ffffff0000092f48:	52802183 	mov	w3, #0x10c                 	// #268
ffffff0000092f4c:	d00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f50:	910c2042 	add	x2, x2, #0x308
ffffff0000092f54:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f58:	910fe021 	add	x1, x1, #0x3f8
ffffff0000092f5c:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f60:	9101a000 	add	x0, x0, #0x68
ffffff0000092f64:	97fffd11 	bl	ffffff00000923a8 <printk>
ffffff0000092f68:	17ffffef 	b	ffffff0000092f24 <lab2_test_buddy+0x584>
ffffff0000092f6c:	d00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f70:	910e6063 	add	x3, x3, #0x398
ffffff0000092f74:	52802282 	mov	w2, #0x114                 	// #276
ffffff0000092f78:	d00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f7c:	91116021 	add	x1, x1, #0x458
ffffff0000092f80:	91008021 	add	x1, x1, #0x20
ffffff0000092f84:	d00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000092f88:	9103e000 	add	x0, x0, #0xf8
ffffff0000092f8c:	97fffd07 	bl	ffffff00000923a8 <printk>
ffffff0000092f90:	14000000 	b	ffffff0000092f90 <lab2_test_buddy+0x5f0>
ffffff0000092f94:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092f98:	d1400673 	sub	x19, x19, #0x1, lsl #12
ffffff0000092f9c:	350002a0 	cbnz	w0, ffffff0000092ff0 <lab2_test_buddy+0x650>
ffffff0000092fa0:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000092fa4:	12001e94 	and	w20, w20, #0xff
ffffff0000092fa8:	110006b5 	add	w21, w21, #0x1
ffffff0000092fac:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092fb0:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092fb4:	f9400800 	ldr	x0, [x0, #16]
ffffff0000092fb8:	eb35c01f 	cmp	x0, w21, sxtw
ffffff0000092fbc:	540002c9 	b.ls	ffffff0000093014 <lab2_test_buddy+0x674>  // b.plast
ffffff0000092fc0:	d2800001 	mov	x1, #0x0                   	// #0
ffffff0000092fc4:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092fc8:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092fcc:	97fffdb3 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000092fd0:	b4fffce0 	cbz	x0, ffffff0000092f6c <lab2_test_buddy+0x5cc>
ffffff0000092fd4:	34fffe14 	cbz	w20, ffffff0000092f94 <lab2_test_buddy+0x5f4>
ffffff0000092fd8:	b9401400 	ldr	w0, [x0, #20]
ffffff0000092fdc:	34000060 	cbz	w0, ffffff0000092fe8 <lab2_test_buddy+0x648>
ffffff0000092fe0:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000092fe4:	17ffffed 	b	ffffff0000092f98 <lab2_test_buddy+0x5f8>
ffffff0000092fe8:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000092fec:	17ffffeb 	b	ffffff0000092f98 <lab2_test_buddy+0x5f8>
ffffff0000092ff0:	d0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000092ff4:	f9401000 	ldr	x0, [x0, #32]
ffffff0000092ff8:	97fffe59 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000092ffc:	eb13001f 	cmp	x0, x19
ffffff0000093000:	54000060 	b.eq	ffffff000009300c <lab2_test_buddy+0x66c>  // b.none
ffffff0000093004:	52800014 	mov	w20, #0x0                   	// #0
ffffff0000093008:	17ffffe7 	b	ffffff0000092fa4 <lab2_test_buddy+0x604>
ffffff000009300c:	52800034 	mov	w20, #0x1                   	// #1
ffffff0000093010:	17ffffe5 	b	ffffff0000092fa4 <lab2_test_buddy+0x604>
ffffff0000093014:	350000f4 	cbnz	w20, ffffff0000093030 <lab2_test_buddy+0x690>
ffffff0000093018:	52800000 	mov	w0, #0x0                   	// #0
ffffff000009301c:	350001a0 	cbnz	w0, ffffff0000093050 <lab2_test_buddy+0x6b0>
ffffff0000093020:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093024:	12001c00 	and	w0, w0, #0xff
ffffff0000093028:	52800015 	mov	w21, #0x0                   	// #0
ffffff000009302c:	1400001c 	b	ffffff000009309c <lab2_test_buddy+0x6fc>
ffffff0000093030:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093034:	f9401000 	ldr	x0, [x0, #32]
ffffff0000093038:	97fffe49 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff000009303c:	b5000060 	cbnz	x0, ffffff0000093048 <lab2_test_buddy+0x6a8>
ffffff0000093040:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000093044:	17fffff6 	b	ffffff000009301c <lab2_test_buddy+0x67c>
ffffff0000093048:	52800000 	mov	w0, #0x0                   	// #0
ffffff000009304c:	17fffff4 	b	ffffff000009301c <lab2_test_buddy+0x67c>
ffffff0000093050:	d2800001 	mov	x1, #0x0                   	// #0
ffffff0000093054:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093058:	f9401000 	ldr	x0, [x0, #32]
ffffff000009305c:	97fffd8f 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000093060:	b4000060 	cbz	x0, ffffff000009306c <lab2_test_buddy+0x6cc>
ffffff0000093064:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093068:	17ffffef 	b	ffffff0000093024 <lab2_test_buddy+0x684>
ffffff000009306c:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000093070:	17ffffed 	b	ffffff0000093024 <lab2_test_buddy+0x684>
ffffff0000093074:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093078:	12001c14 	and	w20, w0, #0xff
ffffff000009307c:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093080:	f9401000 	ldr	x0, [x0, #32]
ffffff0000093084:	97fffdd3 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000093088:	91400673 	add	x19, x19, #0x1, lsl #12
ffffff000009308c:	35000294 	cbnz	w20, ffffff00000930dc <lab2_test_buddy+0x73c>
ffffff0000093090:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093094:	12001c00 	and	w0, w0, #0xff
ffffff0000093098:	110006b5 	add	w21, w21, #0x1
ffffff000009309c:	93407ea1 	sxtw	x1, w21
ffffff00000930a0:	b0000062 	adrp	x2, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000930a4:	f9401042 	ldr	x2, [x2, #32]
ffffff00000930a8:	f9400842 	ldr	x2, [x2, #16]
ffffff00000930ac:	eb35c05f 	cmp	x2, w21, sxtw
ffffff00000930b0:	54000289 	b.ls	ffffff0000093100 <lab2_test_buddy+0x760>  // b.plast
ffffff00000930b4:	b0000062 	adrp	x2, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000930b8:	f9401042 	ldr	x2, [x2, #32]
ffffff00000930bc:	f9400c42 	ldr	x2, [x2, #24]
ffffff00000930c0:	8b010821 	add	x1, x1, x1, lsl #2
ffffff00000930c4:	8b010c41 	add	x1, x2, x1, lsl #3
ffffff00000930c8:	34fffd60 	cbz	w0, ffffff0000093074 <lab2_test_buddy+0x6d4>
ffffff00000930cc:	b9401020 	ldr	w0, [x1, #16]
ffffff00000930d0:	34fffd40 	cbz	w0, ffffff0000093078 <lab2_test_buddy+0x6d8>
ffffff00000930d4:	52800020 	mov	w0, #0x1                   	// #1
ffffff00000930d8:	17ffffe8 	b	ffffff0000093078 <lab2_test_buddy+0x6d8>
ffffff00000930dc:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000930e0:	f9401000 	ldr	x0, [x0, #32]
ffffff00000930e4:	97fffe1e 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff00000930e8:	eb13001f 	cmp	x0, x19
ffffff00000930ec:	54000060 	b.eq	ffffff00000930f8 <lab2_test_buddy+0x758>  // b.none
ffffff00000930f0:	52800000 	mov	w0, #0x0                   	// #0
ffffff00000930f4:	17ffffe8 	b	ffffff0000093094 <lab2_test_buddy+0x6f4>
ffffff00000930f8:	52800020 	mov	w0, #0x1                   	// #1
ffffff00000930fc:	17ffffe6 	b	ffffff0000093094 <lab2_test_buddy+0x6f4>
ffffff0000093100:	340000a0 	cbz	w0, ffffff0000093114 <lab2_test_buddy+0x774>
ffffff0000093104:	eb02327f 	cmp	x19, x2, lsl #12
ffffff0000093108:	54000220 	b.eq	ffffff000009314c <lab2_test_buddy+0x7ac>  // b.none
ffffff000009310c:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093110:	14000002 	b	ffffff0000093118 <lab2_test_buddy+0x778>
ffffff0000093114:	52800000 	mov	w0, #0x0                   	// #0
ffffff0000093118:	340001e0 	cbz	w0, ffffff0000093154 <lab2_test_buddy+0x7b4>
ffffff000009311c:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093120:	91106021 	add	x1, x1, #0x418
ffffff0000093124:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093128:	91008000 	add	x0, x0, #0x20
ffffff000009312c:	97fffc9f 	bl	ffffff00000923a8 <printk>
ffffff0000093130:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093134:	9110e000 	add	x0, x0, #0x438
ffffff0000093138:	97fffc9c 	bl	ffffff00000923a8 <printk>
ffffff000009313c:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000093140:	a9425bf5 	ldp	x21, x22, [sp, #32]
ffffff0000093144:	a8ca7bfd 	ldp	x29, x30, [sp], #160
ffffff0000093148:	d65f03c0 	ret
ffffff000009314c:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000093150:	17fffff2 	b	ffffff0000093118 <lab2_test_buddy+0x778>
ffffff0000093154:	b00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093158:	91068084 	add	x4, x4, #0x1a0
ffffff000009315c:	52802463 	mov	w3, #0x123                 	// #291
ffffff0000093160:	b00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093164:	910c2042 	add	x2, x2, #0x308
ffffff0000093168:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009316c:	91106021 	add	x1, x1, #0x418
ffffff0000093170:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093174:	9101a000 	add	x0, x0, #0x68
ffffff0000093178:	97fffc8c 	bl	ffffff00000923a8 <printk>
ffffff000009317c:	17ffffed 	b	ffffff0000093130 <lab2_test_buddy+0x790>

ffffff0000093180 <size_to_page_order>:
ffffff0000093180:	913ffc02 	add	x2, x0, #0xfff
ffffff0000093184:	d34cfc42 	lsr	x2, x2, #12
ffffff0000093188:	aa0203e1 	mov	x1, x2
ffffff000009318c:	d2800000 	mov	x0, #0x0                   	// #0
ffffff0000093190:	f100043f 	cmp	x1, #0x1
ffffff0000093194:	54000089 	b.ls	ffffff00000931a4 <size_to_page_order+0x24>  // b.plast
ffffff0000093198:	d341fc21 	lsr	x1, x1, #1
ffffff000009319c:	91000400 	add	x0, x0, #0x1
ffffff00000931a0:	17fffffc 	b	ffffff0000093190 <size_to_page_order+0x10>
ffffff00000931a4:	52800021 	mov	w1, #0x1                   	// #1
ffffff00000931a8:	1ac02021 	lsl	w1, w1, w0
ffffff00000931ac:	eb21c05f 	cmp	x2, w1, sxtw
ffffff00000931b0:	54000049 	b.ls	ffffff00000931b8 <size_to_page_order+0x38>  // b.plast
ffffff00000931b4:	91000400 	add	x0, x0, #0x1
ffffff00000931b8:	d65f03c0 	ret

ffffff00000931bc <kfree>:
ffffff00000931bc:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000931c0:	910003fd 	mov	x29, sp
ffffff00000931c4:	f9000bf3 	str	x19, [sp, #16]
ffffff00000931c8:	aa0003f3 	mov	x19, x0
ffffff00000931cc:	97fffca8 	bl	ffffff000009246c <virt_to_page>
ffffff00000931d0:	b40000c0 	cbz	x0, ffffff00000931e8 <kfree+0x2c>
ffffff00000931d4:	f9400c01 	ldr	x1, [x0, #24]
ffffff00000931d8:	b4000081 	cbz	x1, ffffff00000931e8 <kfree+0x2c>
ffffff00000931dc:	aa1303e0 	mov	x0, x19
ffffff00000931e0:	940001a5 	bl	ffffff0000093874 <free_in_slab>
ffffff00000931e4:	14000004 	b	ffffff00000931f4 <kfree+0x38>
ffffff00000931e8:	aa0003e1 	mov	x1, x0
ffffff00000931ec:	f9401000 	ldr	x0, [x0, #32]
ffffff00000931f0:	97fffd78 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff00000931f4:	f9400bf3 	ldr	x19, [sp, #16]
ffffff00000931f8:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000931fc:	d65f03c0 	ret

ffffff0000093200 <get_pages>:
ffffff0000093200:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
ffffff0000093204:	910003fd 	mov	x29, sp
ffffff0000093208:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff000009320c:	f90013f5 	str	x21, [sp, #32]
ffffff0000093210:	2a0003f5 	mov	w21, w0
ffffff0000093214:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000093218:	d2800014 	mov	x20, #0x0                   	// #0
ffffff000009321c:	b0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093220:	f9402c21 	ldr	x1, [x1, #88]
ffffff0000093224:	b9400020 	ldr	w0, [x1]
ffffff0000093228:	6b13001f 	cmp	w0, w19
ffffff000009322c:	540001cd 	b.le	ffffff0000093264 <get_pages+0x64>
ffffff0000093230:	93407e60 	sxtw	x0, w19
ffffff0000093234:	8b33c402 	add	x2, x0, w19, sxtw #1
ffffff0000093238:	d37df042 	lsl	x2, x2, #3
ffffff000009323c:	cb000042 	sub	x2, x2, x0
ffffff0000093240:	93407ea1 	sxtw	x1, w21
ffffff0000093244:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093248:	f9401000 	ldr	x0, [x0, #32]
ffffff000009324c:	8b021000 	add	x0, x0, x2, lsl #4
ffffff0000093250:	97fffd12 	bl	ffffff0000092698 <buddy_get_pages>
ffffff0000093254:	aa0003f4 	mov	x20, x0
ffffff0000093258:	b5000060 	cbnz	x0, ffffff0000093264 <get_pages+0x64>
ffffff000009325c:	11000673 	add	w19, w19, #0x1
ffffff0000093260:	17ffffef 	b	ffffff000009321c <get_pages+0x1c>
ffffff0000093264:	b4000134 	cbz	x20, ffffff0000093288 <get_pages+0x88>
ffffff0000093268:	aa1403e0 	mov	x0, x20
ffffff000009326c:	97fffc6a 	bl	ffffff0000092414 <page_to_virt>
ffffff0000093270:	aa0003f4 	mov	x20, x0
ffffff0000093274:	aa1403e0 	mov	x0, x20
ffffff0000093278:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff000009327c:	f94013f5 	ldr	x21, [sp, #32]
ffffff0000093280:	a8c37bfd 	ldp	x29, x30, [sp], #48
ffffff0000093284:	d65f03c0 	ret
ffffff0000093288:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009328c:	91122021 	add	x1, x1, #0x488
ffffff0000093290:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093294:	9112a000 	add	x0, x0, #0x4a8
ffffff0000093298:	97fffc44 	bl	ffffff00000923a8 <printk>
ffffff000009329c:	17fffff6 	b	ffffff0000093274 <get_pages+0x74>

ffffff00000932a0 <kmalloc>:
ffffff00000932a0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000932a4:	910003fd 	mov	x29, sp
ffffff00000932a8:	f120001f 	cmp	x0, #0x800
ffffff00000932ac:	540000e9 	b.ls	ffffff00000932c8 <kmalloc+0x28>  // b.plast
ffffff00000932b0:	f140041f 	cmp	x0, #0x1, lsl #12
ffffff00000932b4:	540000e8 	b.hi	ffffff00000932d0 <kmalloc+0x30>  // b.pmore
ffffff00000932b8:	d2800000 	mov	x0, #0x0                   	// #0
ffffff00000932bc:	97ffffd1 	bl	ffffff0000093200 <get_pages>
ffffff00000932c0:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff00000932c4:	d65f03c0 	ret
ffffff00000932c8:	94000146 	bl	ffffff00000937e0 <alloc_in_slab>
ffffff00000932cc:	17fffffd 	b	ffffff00000932c0 <kmalloc+0x20>
ffffff00000932d0:	97ffffac 	bl	ffffff0000093180 <size_to_page_order>
ffffff00000932d4:	17fffffa 	b	ffffff00000932bc <kmalloc+0x1c>

ffffff00000932d8 <kzalloc>:
ffffff00000932d8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000932dc:	910003fd 	mov	x29, sp
ffffff00000932e0:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000932e4:	aa0003f4 	mov	x20, x0
ffffff00000932e8:	97ffffee 	bl	ffffff00000932a0 <kmalloc>
ffffff00000932ec:	aa0003f3 	mov	x19, x0
ffffff00000932f0:	b4000080 	cbz	x0, ffffff0000093300 <kzalloc+0x28>
ffffff00000932f4:	aa1403e2 	mov	x2, x20
ffffff00000932f8:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000932fc:	97fff413 	bl	ffffff0000090348 <memset>
ffffff0000093300:	aa1303e0 	mov	x0, x19
ffffff0000093304:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000093308:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff000009330c:	d65f03c0 	ret

ffffff0000093310 <free_pages>:
ffffff0000093310:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff0000093314:	910003fd 	mov	x29, sp
ffffff0000093318:	97fffc55 	bl	ffffff000009246c <virt_to_page>
ffffff000009331c:	aa0003e1 	mov	x1, x0
ffffff0000093320:	f9401000 	ldr	x0, [x0, #32]
ffffff0000093324:	97fffd2b 	bl	ffffff00000927d0 <buddy_free_pages>
ffffff0000093328:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff000009332c:	d65f03c0 	ret

ffffff0000093330 <lab2_test_kmalloc>:
ffffff0000093330:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000093334:	910003fd 	mov	x29, sp
ffffff0000093338:	f9000bf3 	str	x19, [sp, #16]
ffffff000009333c:	d2800140 	mov	x0, #0xa                   	// #10
ffffff0000093340:	97ffffd8 	bl	ffffff00000932a0 <kmalloc>
ffffff0000093344:	b40000e0 	cbz	x0, ffffff0000093360 <lab2_test_kmalloc+0x30>
ffffff0000093348:	97ffff9d 	bl	ffffff00000931bc <kfree>
ffffff000009334c:	d2803200 	mov	x0, #0x190                 	// #400
ffffff0000093350:	97ffffd4 	bl	ffffff00000932a0 <kmalloc>
ffffff0000093354:	b4000180 	cbz	x0, ffffff0000093384 <lab2_test_kmalloc+0x54>
ffffff0000093358:	52800001 	mov	w1, #0x0                   	// #0
ffffff000009335c:	14000015 	b	ffffff00000933b0 <lab2_test_kmalloc+0x80>
ffffff0000093360:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093364:	9113a063 	add	x3, x3, #0x4e8
ffffff0000093368:	52800de2 	mov	w2, #0x6f                  	// #111
ffffff000009336c:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093370:	91140021 	add	x1, x1, #0x500
ffffff0000093374:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093378:	9103e000 	add	x0, x0, #0xf8
ffffff000009337c:	97fffc0b 	bl	ffffff00000923a8 <printk>
ffffff0000093380:	14000000 	b	ffffff0000093380 <lab2_test_kmalloc+0x50>
ffffff0000093384:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093388:	9113a063 	add	x3, x3, #0x4e8
ffffff000009338c:	52800e82 	mov	w2, #0x74                  	// #116
ffffff0000093390:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093394:	91140021 	add	x1, x1, #0x500
ffffff0000093398:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009339c:	9103e000 	add	x0, x0, #0xf8
ffffff00000933a0:	97fffc02 	bl	ffffff00000923a8 <printk>
ffffff00000933a4:	14000000 	b	ffffff00000933a4 <lab2_test_kmalloc+0x74>
ffffff00000933a8:	b821d801 	str	w1, [x0, w1, sxtw #2]
ffffff00000933ac:	11000421 	add	w1, w1, #0x1
ffffff00000933b0:	71018c3f 	cmp	w1, #0x63
ffffff00000933b4:	54ffffad 	b.le	ffffff00000933a8 <lab2_test_kmalloc+0x78>
ffffff00000933b8:	52800001 	mov	w1, #0x0                   	// #0
ffffff00000933bc:	52800033 	mov	w19, #0x1                   	// #1
ffffff00000933c0:	14000004 	b	ffffff00000933d0 <lab2_test_kmalloc+0xa0>
ffffff00000933c4:	52800013 	mov	w19, #0x0                   	// #0
ffffff00000933c8:	12001e73 	and	w19, w19, #0xff
ffffff00000933cc:	11000421 	add	w1, w1, #0x1
ffffff00000933d0:	71018c3f 	cmp	w1, #0x63
ffffff00000933d4:	5400012c 	b.gt	ffffff00000933f8 <lab2_test_kmalloc+0xc8>
ffffff00000933d8:	34ffff73 	cbz	w19, ffffff00000933c4 <lab2_test_kmalloc+0x94>
ffffff00000933dc:	b861d802 	ldr	w2, [x0, w1, sxtw #2]
ffffff00000933e0:	6b01005f 	cmp	w2, w1
ffffff00000933e4:	54000060 	b.eq	ffffff00000933f0 <lab2_test_kmalloc+0xc0>  // b.none
ffffff00000933e8:	52800013 	mov	w19, #0x0                   	// #0
ffffff00000933ec:	17fffff7 	b	ffffff00000933c8 <lab2_test_kmalloc+0x98>
ffffff00000933f0:	52800033 	mov	w19, #0x1                   	// #1
ffffff00000933f4:	17fffff5 	b	ffffff00000933c8 <lab2_test_kmalloc+0x98>
ffffff00000933f8:	97ffff71 	bl	ffffff00000931bc <kfree>
ffffff00000933fc:	d2840000 	mov	x0, #0x2000                	// #8192
ffffff0000093400:	97ffffb6 	bl	ffffff00000932d8 <kzalloc>
ffffff0000093404:	b4000060 	cbz	x0, ffffff0000093410 <lab2_test_kmalloc+0xe0>
ffffff0000093408:	52800001 	mov	w1, #0x0                   	// #0
ffffff000009340c:	1400000d 	b	ffffff0000093440 <lab2_test_kmalloc+0x110>
ffffff0000093410:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093414:	9113a063 	add	x3, x3, #0x4e8
ffffff0000093418:	52800fe2 	mov	w2, #0x7f                  	// #127
ffffff000009341c:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093420:	91140021 	add	x1, x1, #0x500
ffffff0000093424:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093428:	9103e000 	add	x0, x0, #0xf8
ffffff000009342c:	97fffbdf 	bl	ffffff00000923a8 <printk>
ffffff0000093430:	14000000 	b	ffffff0000093430 <lab2_test_kmalloc+0x100>
ffffff0000093434:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000093438:	12001e73 	and	w19, w19, #0xff
ffffff000009343c:	11000421 	add	w1, w1, #0x1
ffffff0000093440:	5283ffe2 	mov	w2, #0x1fff                	// #8191
ffffff0000093444:	6b02003f 	cmp	w1, w2
ffffff0000093448:	5400010c 	b.gt	ffffff0000093468 <lab2_test_kmalloc+0x138>
ffffff000009344c:	34ffff53 	cbz	w19, ffffff0000093434 <lab2_test_kmalloc+0x104>
ffffff0000093450:	3861c802 	ldrb	w2, [x0, w1, sxtw]
ffffff0000093454:	34000062 	cbz	w2, ffffff0000093460 <lab2_test_kmalloc+0x130>
ffffff0000093458:	52800013 	mov	w19, #0x0                   	// #0
ffffff000009345c:	17fffff7 	b	ffffff0000093438 <lab2_test_kmalloc+0x108>
ffffff0000093460:	52800033 	mov	w19, #0x1                   	// #1
ffffff0000093464:	17fffff5 	b	ffffff0000093438 <lab2_test_kmalloc+0x108>
ffffff0000093468:	97ffff55 	bl	ffffff00000931bc <kfree>
ffffff000009346c:	34000133 	cbz	w19, ffffff0000093490 <lab2_test_kmalloc+0x160>
ffffff0000093470:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093474:	9113e021 	add	x1, x1, #0x4f8
ffffff0000093478:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009347c:	91008000 	add	x0, x0, #0x20
ffffff0000093480:	97fffbca 	bl	ffffff00000923a8 <printk>
ffffff0000093484:	f9400bf3 	ldr	x19, [sp, #16]
ffffff0000093488:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff000009348c:	d65f03c0 	ret
ffffff0000093490:	b00000e4 	adrp	x4, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093494:	91068084 	add	x4, x4, #0x1a0
ffffff0000093498:	528010a3 	mov	w3, #0x85                  	// #133
ffffff000009349c:	b00000e2 	adrp	x2, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000934a0:	91122042 	add	x2, x2, #0x488
ffffff00000934a4:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000934a8:	9113e021 	add	x1, x1, #0x4f8
ffffff00000934ac:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000934b0:	9101a000 	add	x0, x0, #0x68
ffffff00000934b4:	97fffbbd 	bl	ffffff00000923a8 <printk>
ffffff00000934b8:	17fffff3 	b	ffffff0000093484 <lab2_test_kmalloc+0x154>

ffffff00000934bc <get_free_mem_size>:
ffffff00000934bc:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000934c0:	910003fd 	mov	x29, sp
ffffff00000934c4:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000934c8:	94000102 	bl	ffffff00000938d0 <get_free_mem_size_from_slab>
ffffff00000934cc:	aa0003f4 	mov	x20, x0
ffffff00000934d0:	52800013 	mov	w19, #0x0                   	// #0
ffffff00000934d4:	b0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000934d8:	f9402c21 	ldr	x1, [x1, #88]
ffffff00000934dc:	b9400020 	ldr	w0, [x1]
ffffff00000934e0:	6b13001f 	cmp	w0, w19
ffffff00000934e4:	5400018d 	b.le	ffffff0000093514 <get_free_mem_size+0x58>
ffffff00000934e8:	93407e60 	sxtw	x0, w19
ffffff00000934ec:	8b33c401 	add	x1, x0, w19, sxtw #1
ffffff00000934f0:	d37df021 	lsl	x1, x1, #3
ffffff00000934f4:	cb000021 	sub	x1, x1, x0
ffffff00000934f8:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000934fc:	f9401000 	ldr	x0, [x0, #32]
ffffff0000093500:	8b011000 	add	x0, x0, x1, lsl #4
ffffff0000093504:	97fffd16 	bl	ffffff000009295c <get_free_mem_size_from_buddy>
ffffff0000093508:	8b000294 	add	x20, x20, x0
ffffff000009350c:	11000673 	add	w19, w19, #0x1
ffffff0000093510:	17fffff1 	b	ffffff00000934d4 <get_free_mem_size+0x18>
ffffff0000093514:	aa1403e0 	mov	x0, x20
ffffff0000093518:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff000009351c:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000093520:	d65f03c0 	ret

ffffff0000093524 <mm_init>:
ffffff0000093524:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000093528:	910003fd 	mov	x29, sp
ffffff000009352c:	f9000bf3 	str	x19, [sp, #16]
ffffff0000093530:	b0000073 	adrp	x19, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093534:	f9402e73 	ldr	x19, [x19, #88]
ffffff0000093538:	b900027f 	str	wzr, [x19]
ffffff000009353c:	97fff7b6 	bl	ffffff0000091414 <parse_mem_map>
ffffff0000093540:	b9400260 	ldr	w0, [x19]
ffffff0000093544:	7100041f 	cmp	w0, #0x1
ffffff0000093548:	54000100 	b.eq	ffffff0000093568 <mm_init+0x44>  // b.none
ffffff000009354c:	52800782 	mov	w2, #0x3c                  	// #60
ffffff0000093550:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093554:	91152021 	add	x1, x1, #0x548
ffffff0000093558:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009355c:	91146000 	add	x0, x0, #0x518
ffffff0000093560:	97fffb92 	bl	ffffff00000923a8 <printk>
ffffff0000093564:	14000000 	b	ffffff0000093564 <mm_init+0x40>
ffffff0000093568:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff000009356c:	f9400800 	ldr	x0, [x0, #16]
ffffff0000093570:	f9400002 	ldr	x2, [x0]
ffffff0000093574:	b2585fe1 	mov	x1, #0xffffff0000000000    	// #-1099511627776
ffffff0000093578:	8b010041 	add	x1, x2, x1
ffffff000009357c:	f9400403 	ldr	x3, [x0, #8]
ffffff0000093580:	cb020063 	sub	x3, x3, x2
ffffff0000093584:	d29c78e0 	mov	x0, #0xe3c7                	// #58311
ffffff0000093588:	f2aaf480 	movk	x0, #0x57a4, lsl #16
ffffff000009358c:	f2c30860 	movk	x0, #0x1843, lsl #32
ffffff0000093590:	f2efd860 	movk	x0, #0x7ec3, lsl #48
ffffff0000093594:	9bc07c63 	umulh	x3, x3, x0
ffffff0000093598:	d34bfc63 	lsr	x3, x3, #11
ffffff000009359c:	8b030862 	add	x2, x3, x3, lsl #2
ffffff00000935a0:	d37df040 	lsl	x0, x2, #3
ffffff00000935a4:	8b010000 	add	x0, x0, x1
ffffff00000935a8:	913ffc02 	add	x2, x0, #0xfff
ffffff00000935ac:	9274cc42 	and	x2, x2, #0xfffffffffffff000
ffffff00000935b0:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000935b4:	f9401000 	ldr	x0, [x0, #32]
ffffff00000935b8:	97fffcac 	bl	ffffff0000092868 <init_buddy>
ffffff00000935bc:	97fffcf9 	bl	ffffff00000929a0 <lab2_test_buddy>
ffffff00000935c0:	94000077 	bl	ffffff000009379c <init_slab>
ffffff00000935c4:	f9400bf3 	ldr	x19, [sp, #16]
ffffff00000935c8:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000935cc:	d65f03c0 	ret

ffffff00000935d0 <alloc_slab_memory>:
ffffff00000935d0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
ffffff00000935d4:	910003fd 	mov	x29, sp
ffffff00000935d8:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000935dc:	f90013f5 	str	x21, [sp, #32]
ffffff00000935e0:	d34cfc01 	lsr	x1, x0, #12
ffffff00000935e4:	2a0103e0 	mov	w0, w1
ffffff00000935e8:	d2800013 	mov	x19, #0x0                   	// #0
ffffff00000935ec:	14000003 	b	ffffff00000935f8 <alloc_slab_memory+0x28>
ffffff00000935f0:	13017c00 	asr	w0, w0, #1
ffffff00000935f4:	91000673 	add	x19, x19, #0x1
ffffff00000935f8:	7100041f 	cmp	w0, #0x1
ffffff00000935fc:	54ffffac 	b.gt	ffffff00000935f0 <alloc_slab_memory+0x20>
ffffff0000093600:	52800020 	mov	w0, #0x1                   	// #1
ffffff0000093604:	1ad32000 	lsl	w0, w0, w19
ffffff0000093608:	eb20c03f 	cmp	x1, w0, sxtw
ffffff000009360c:	54000049 	b.ls	ffffff0000093614 <alloc_slab_memory+0x44>  // b.plast
ffffff0000093610:	91000673 	add	x19, x19, #0x1
ffffff0000093614:	2a1303e0 	mov	w0, w19
ffffff0000093618:	97fffefa 	bl	ffffff0000093200 <get_pages>
ffffff000009361c:	aa0003f4 	mov	x20, x0
ffffff0000093620:	97fffb93 	bl	ffffff000009246c <virt_to_page>
ffffff0000093624:	b40000a0 	cbz	x0, ffffff0000093638 <alloc_slab_memory+0x68>
ffffff0000093628:	d2800035 	mov	x21, #0x1                   	// #1
ffffff000009362c:	9ad322b5 	lsl	x21, x21, x19
ffffff0000093630:	52800013 	mov	w19, #0x0                   	// #0
ffffff0000093634:	14000014 	b	ffffff0000093684 <alloc_slab_memory+0xb4>
ffffff0000093638:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009363c:	91154021 	add	x1, x1, #0x550
ffffff0000093640:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093644:	9115a000 	add	x0, x0, #0x568
ffffff0000093648:	97fffb58 	bl	ffffff00000923a8 <printk>
ffffff000009364c:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093650:	91046063 	add	x3, x3, #0x118
ffffff0000093654:	528005a2 	mov	w2, #0x2d                  	// #45
ffffff0000093658:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009365c:	91174021 	add	x1, x1, #0x5d0
ffffff0000093660:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093664:	9103e000 	add	x0, x0, #0xf8
ffffff0000093668:	97fffb50 	bl	ffffff00000923a8 <printk>
ffffff000009366c:	14000000 	b	ffffff000009366c <alloc_slab_memory+0x9c>
ffffff0000093670:	53144e60 	lsl	w0, w19, #12
ffffff0000093674:	8b20c280 	add	x0, x20, w0, sxtw
ffffff0000093678:	97fffb7d 	bl	ffffff000009246c <virt_to_page>
ffffff000009367c:	f9000c14 	str	x20, [x0, #24]
ffffff0000093680:	11000673 	add	w19, w19, #0x1
ffffff0000093684:	eb33c2bf 	cmp	x21, w19, sxtw
ffffff0000093688:	54ffff48 	b.hi	ffffff0000093670 <alloc_slab_memory+0xa0>  // b.pmore
ffffff000009368c:	aa1403e0 	mov	x0, x20
ffffff0000093690:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000093694:	f94013f5 	ldr	x21, [sp, #32]
ffffff0000093698:	a8c37bfd 	ldp	x29, x30, [sp], #48
ffffff000009369c:	d65f03c0 	ret

ffffff00000936a0 <init_slab_cache>:
ffffff00000936a0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000936a4:	910003fd 	mov	x29, sp
ffffff00000936a8:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff00000936ac:	2a0003f4 	mov	w20, w0
ffffff00000936b0:	93407c33 	sxtw	x19, w1
ffffff00000936b4:	aa1303e0 	mov	x0, x19
ffffff00000936b8:	97ffffc6 	bl	ffffff00000935d0 <alloc_slab_memory>
ffffff00000936bc:	d2800025 	mov	x5, #0x1                   	// #1
ffffff00000936c0:	9ad420a5 	lsl	x5, x5, x20
ffffff00000936c4:	9ad42664 	lsr	x4, x19, x20
ffffff00000936c8:	8b050001 	add	x1, x0, x5
ffffff00000936cc:	f9000001 	str	x1, [x0]
ffffff00000936d0:	f900041f 	str	xzr, [x0, #8]
ffffff00000936d4:	b9001014 	str	w20, [x0, #16]
ffffff00000936d8:	52800002 	mov	w2, #0x0                   	// #0
ffffff00000936dc:	d1000883 	sub	x3, x4, #0x2
ffffff00000936e0:	eb22c07f 	cmp	x3, w2, sxtw
ffffff00000936e4:	540000c9 	b.ls	ffffff00000936fc <init_slab_cache+0x5c>  // b.plast
ffffff00000936e8:	8b050023 	add	x3, x1, x5
ffffff00000936ec:	f9000023 	str	x3, [x1]
ffffff00000936f0:	11000442 	add	w2, w2, #0x1
ffffff00000936f4:	aa0303e1 	mov	x1, x3
ffffff00000936f8:	17fffff9 	b	ffffff00000936dc <init_slab_cache+0x3c>
ffffff00000936fc:	f900003f 	str	xzr, [x1]
ffffff0000093700:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000093704:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000093708:	d65f03c0 	ret

ffffff000009370c <_alloc_in_slab_nolock>:
ffffff000009370c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000093710:	910003fd 	mov	x29, sp
ffffff0000093714:	a90153f3 	stp	x19, x20, [sp, #16]
ffffff0000093718:	aa0003f3 	mov	x19, x0
ffffff000009371c:	f9400000 	ldr	x0, [x0]
ffffff0000093720:	b40000c0 	cbz	x0, ffffff0000093738 <_alloc_in_slab_nolock+0x2c>
ffffff0000093724:	f9400001 	ldr	x1, [x0]
ffffff0000093728:	f9000261 	str	x1, [x19]
ffffff000009372c:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffff0000093730:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff0000093734:	d65f03c0 	ret
ffffff0000093738:	2a0103f4 	mov	w20, w1
ffffff000009373c:	f9400661 	ldr	x1, [x19, #8]
ffffff0000093740:	b4000101 	cbz	x1, ffffff0000093760 <_alloc_in_slab_nolock+0x54>
ffffff0000093744:	f9400020 	ldr	x0, [x1]
ffffff0000093748:	b4000080 	cbz	x0, ffffff0000093758 <_alloc_in_slab_nolock+0x4c>
ffffff000009374c:	f9400002 	ldr	x2, [x0]
ffffff0000093750:	f9000022 	str	x2, [x1]
ffffff0000093754:	17fffff6 	b	ffffff000009372c <_alloc_in_slab_nolock+0x20>
ffffff0000093758:	f9400421 	ldr	x1, [x1, #8]
ffffff000009375c:	17fffff9 	b	ffffff0000093740 <_alloc_in_slab_nolock+0x34>
ffffff0000093760:	52a00401 	mov	w1, #0x200000              	// #2097152
ffffff0000093764:	2a1403e0 	mov	w0, w20
ffffff0000093768:	97ffffce 	bl	ffffff00000936a0 <init_slab_cache>
ffffff000009376c:	f9000413 	str	x19, [x0, #8]
ffffff0000093770:	b0000062 	adrp	x2, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093774:	f9402842 	ldr	x2, [x2, #80]
ffffff0000093778:	f834d840 	str	x0, [x2, w20, sxtw #3]
ffffff000009377c:	2a1403e1 	mov	w1, w20
ffffff0000093780:	97ffffe3 	bl	ffffff000009370c <_alloc_in_slab_nolock>
ffffff0000093784:	17ffffea 	b	ffffff000009372c <_alloc_in_slab_nolock+0x20>

ffffff0000093788 <_alloc_in_slab>:
ffffff0000093788:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff000009378c:	910003fd 	mov	x29, sp
ffffff0000093790:	97ffffdf 	bl	ffffff000009370c <_alloc_in_slab_nolock>
ffffff0000093794:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000093798:	d65f03c0 	ret

ffffff000009379c <init_slab>:
ffffff000009379c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff00000937a0:	910003fd 	mov	x29, sp
ffffff00000937a4:	f9000bf3 	str	x19, [sp, #16]
ffffff00000937a8:	528000b3 	mov	w19, #0x5                   	// #5
ffffff00000937ac:	14000008 	b	ffffff00000937cc <init_slab+0x30>
ffffff00000937b0:	52a00401 	mov	w1, #0x200000              	// #2097152
ffffff00000937b4:	2a1303e0 	mov	w0, w19
ffffff00000937b8:	97ffffba 	bl	ffffff00000936a0 <init_slab_cache>
ffffff00000937bc:	b0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff00000937c0:	f9402821 	ldr	x1, [x1, #80]
ffffff00000937c4:	f833d820 	str	x0, [x1, w19, sxtw #3]
ffffff00000937c8:	11000673 	add	w19, w19, #0x1
ffffff00000937cc:	71002e7f 	cmp	w19, #0xb
ffffff00000937d0:	54ffff0d 	b.le	ffffff00000937b0 <init_slab+0x14>
ffffff00000937d4:	f9400bf3 	ldr	x19, [sp, #16]
ffffff00000937d8:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000937dc:	d65f03c0 	ret

ffffff00000937e0 <alloc_in_slab>:
ffffff00000937e0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
ffffff00000937e4:	910003fd 	mov	x29, sp
ffffff00000937e8:	f120001f 	cmp	x0, #0x800
ffffff00000937ec:	540000a8 	b.hi	ffffff0000093800 <alloc_in_slab+0x20>  // b.pmore
ffffff00000937f0:	aa0003e1 	mov	x1, x0
ffffff00000937f4:	2a0003e2 	mov	w2, w0
ffffff00000937f8:	d2800000 	mov	x0, #0x0                   	// #0
ffffff00000937fc:	1400000d 	b	ffffff0000093830 <alloc_in_slab+0x50>
ffffff0000093800:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093804:	9116a063 	add	x3, x3, #0x5a8
ffffff0000093808:	528012a2 	mov	w2, #0x95                  	// #149
ffffff000009380c:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff0000093810:	91174021 	add	x1, x1, #0x5d0
ffffff0000093814:	91006021 	add	x1, x1, #0x18
ffffff0000093818:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff000009381c:	9103e000 	add	x0, x0, #0xf8
ffffff0000093820:	97fffae2 	bl	ffffff00000923a8 <printk>
ffffff0000093824:	14000000 	b	ffffff0000093824 <alloc_in_slab+0x44>
ffffff0000093828:	13017c42 	asr	w2, w2, #1
ffffff000009382c:	91000400 	add	x0, x0, #0x1
ffffff0000093830:	7100045f 	cmp	w2, #0x1
ffffff0000093834:	54ffffac 	b.gt	ffffff0000093828 <alloc_in_slab+0x48>
ffffff0000093838:	52800022 	mov	w2, #0x1                   	// #1
ffffff000009383c:	1ac02042 	lsl	w2, w2, w0
ffffff0000093840:	eb22c03f 	cmp	x1, w2, sxtw
ffffff0000093844:	54000049 	b.ls	ffffff000009384c <alloc_in_slab+0x6c>  // b.plast
ffffff0000093848:	91000400 	add	x0, x0, #0x1
ffffff000009384c:	2a0003e1 	mov	w1, w0
ffffff0000093850:	7100101f 	cmp	w0, #0x4
ffffff0000093854:	5400004c 	b.gt	ffffff000009385c <alloc_in_slab+0x7c>
ffffff0000093858:	528000a1 	mov	w1, #0x5                   	// #5
ffffff000009385c:	b0000060 	adrp	x0, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff0000093860:	f9402800 	ldr	x0, [x0, #80]
ffffff0000093864:	f861d800 	ldr	x0, [x0, w1, sxtw #3]
ffffff0000093868:	97ffffc8 	bl	ffffff0000093788 <_alloc_in_slab>
ffffff000009386c:	a8c17bfd 	ldp	x29, x30, [sp], #16
ffffff0000093870:	d65f03c0 	ret

ffffff0000093874 <free_in_slab>:
ffffff0000093874:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffff0000093878:	910003fd 	mov	x29, sp
ffffff000009387c:	f9000bf3 	str	x19, [sp, #16]
ffffff0000093880:	aa0003f3 	mov	x19, x0
ffffff0000093884:	97fffafa 	bl	ffffff000009246c <virt_to_page>
ffffff0000093888:	b4000100 	cbz	x0, ffffff00000938a8 <free_in_slab+0x34>
ffffff000009388c:	f9400c00 	ldr	x0, [x0, #24]
ffffff0000093890:	f9400001 	ldr	x1, [x0]
ffffff0000093894:	f9000261 	str	x1, [x19]
ffffff0000093898:	f9000013 	str	x19, [x0]
ffffff000009389c:	f9400bf3 	ldr	x19, [sp, #16]
ffffff00000938a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffff00000938a4:	d65f03c0 	ret
ffffff00000938a8:	b00000e3 	adrp	x3, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000938ac:	910e6063 	add	x3, x3, #0x398
ffffff00000938b0:	528014c2 	mov	w2, #0xa6                  	// #166
ffffff00000938b4:	b00000e1 	adrp	x1, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000938b8:	91174021 	add	x1, x1, #0x5d0
ffffff00000938bc:	9100a021 	add	x1, x1, #0x28
ffffff00000938c0:	b00000e0 	adrp	x0, ffffff00000b0000 <_GLOBAL_OFFSET_TABLE_+0x10000>
ffffff00000938c4:	9103e000 	add	x0, x0, #0xf8
ffffff00000938c8:	97fffab8 	bl	ffffff00000923a8 <printk>
ffffff00000938cc:	14000000 	b	ffffff00000938cc <free_in_slab+0x58>

ffffff00000938d0 <get_free_mem_size_from_slab>:
ffffff00000938d0:	d2800000 	mov	x0, #0x0                   	// #0
ffffff00000938d4:	528000a4 	mov	w4, #0x5                   	// #5
ffffff00000938d8:	14000009 	b	ffffff00000938fc <get_free_mem_size_from_slab+0x2c>
ffffff00000938dc:	8b020000 	add	x0, x0, x2
ffffff00000938e0:	f9400021 	ldr	x1, [x1]
ffffff00000938e4:	b5ffffc1 	cbnz	x1, ffffff00000938dc <get_free_mem_size_from_slab+0xc>
ffffff00000938e8:	f9400463 	ldr	x3, [x3, #8]
ffffff00000938ec:	b4000063 	cbz	x3, ffffff00000938f8 <get_free_mem_size_from_slab+0x28>
ffffff00000938f0:	f9400061 	ldr	x1, [x3]
ffffff00000938f4:	17fffffc 	b	ffffff00000938e4 <get_free_mem_size_from_slab+0x14>
ffffff00000938f8:	11000484 	add	w4, w4, #0x1
ffffff00000938fc:	71002c9f 	cmp	w4, #0xb
ffffff0000093900:	5400010c 	b.gt	ffffff0000093920 <get_free_mem_size_from_slab+0x50>
ffffff0000093904:	93407c85 	sxtw	x5, w4
ffffff0000093908:	b0000061 	adrp	x1, ffffff00000a0000 <_GLOBAL_OFFSET_TABLE_>
ffffff000009390c:	f9402821 	ldr	x1, [x1, #80]
ffffff0000093910:	f8657823 	ldr	x3, [x1, x5, lsl #3]
ffffff0000093914:	d2800022 	mov	x2, #0x1                   	// #1
ffffff0000093918:	9ac52042 	lsl	x2, x2, x5
ffffff000009391c:	17fffff4 	b	ffffff00000938ec <get_free_mem_size_from_slab+0x1c>
ffffff0000093920:	d65f03c0 	ret
