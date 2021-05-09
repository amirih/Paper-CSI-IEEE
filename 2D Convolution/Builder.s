	.file	"Builder.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	assignMatrixf32
	.type	assignMatrixf32, @function
assignMatrixf32:
.LFB4883:
	.cfi_startproc
	vmovsd	.LC0(%rip), %xmm1
	xorl	%r8d, %r8d
	movl	$274877907, %r11d
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rdi, %r10
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%r8d, %eax
	addl	$1, %esi
	addq	$4, %r10
	cltd
	vxorpd	%xmm0, %xmm0, %xmm0
	idivl	%esi
	vxorps	%xmm2, %xmm2, %xmm2
	leal	(%rax,%r9), %ecx
	addl	%r8d, %r9d
	movl	%ecx, %eax
	imull	%r11d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$6, %edx
	subl	%eax, %edx
	imull	$1000, %edx, %edx
	subl	%edx, %ecx
	vcvtsi2sd	%ecx, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -4(%r10)
	cmpl	$4096, %esi
	jne	.L3
	addl	$1, %r8d
	addq	$16384, %rdi
	cmpl	$4096, %r8d
	jne	.L2
	rep ret
	.cfi_endproc
.LFE4883:
	.size	assignMatrixf32, .-assignMatrixf32
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	assignMatrixi32
	.type	assignMatrixi32, @function
assignMatrixi32:
.LFB4884:
	.cfi_startproc
	xorl	%esi, %esi
	movl	$274877907, %r9d
	.p2align 4,,10
	.p2align 3
.L9:
	leaq	16384(%rdi), %r8
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%ecx, %eax
	addq	$4, %rdi
	imull	%r9d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$6, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	addl	%esi, %ecx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -4(%rdi)
	cmpq	%rdi, %r8
	jne	.L10
	addl	$1, %esi
	movq	%r8, %rdi
	cmpl	$4096, %esi
	jne	.L9
	rep ret
	.cfi_endproc
.LFE4884:
	.size	assignMatrixi32, .-assignMatrixi32
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	assignMatrixi16
	.type	assignMatrixi16, @function
assignMatrixi16:
.LFB4885:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	$1717986919, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	8192(%r13), %rbp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L16:
	call	rand
	movl	%eax, %ecx
	movzbl	%r14b, %esi
	addq	$2, %r13
	imull	%r12d
	movl	%ecx, %eax
	addl	%ebx, %r14d
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	addl	%esi, %ecx
	movw	%cx, -2(%r13)
	cmpq	%r13, %rbp
	jne	.L16
	addl	$1, %ebx
	movq	%rbp, %r13
	cmpl	$4096, %ebx
	jne	.L15
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4885:
	.size	assignMatrixi16, .-assignMatrixi16
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	assignMatrixui16
	.type	assignMatrixui16, @function
assignMatrixui16:
.LFB4886:
	.cfi_startproc
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	8192(%rdi), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L23:
	movzbl	%al, %edx
	addq	$2, %rdi
	addl	%ecx, %eax
	movw	%dx, -2(%rdi)
	cmpq	%rdi, %rsi
	jne	.L23
	addl	$1, %ecx
	movq	%rsi, %rdi
	cmpl	$4096, %ecx
	jne	.L22
	rep ret
	.cfi_endproc
.LFE4886:
	.size	assignMatrixui16, .-assignMatrixui16
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	assignMatrixi8
	.type	assignMatrixi8, @function
assignMatrixi8:
.LFB4887:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	4096(%r12), %rbp
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L29:
	call	rand
	movl	%eax, %edx
	movzbl	%r13b, %ecx
	addq	$1, %r12
	shrl	$31, %edx
	addl	%ebx, %r13d
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movb	%al, -1(%r12)
	cmpq	%r12, %rbp
	jne	.L29
	addl	$1, %ebx
	movq	%rbp, %r12
	cmpl	$4096, %ebx
	jne	.L28
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4887:
	.size	assignMatrixi8, .-assignMatrixi8
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	assignArrayi32
	.type	assignArrayi32, @function
assignArrayi32:
.LFB4888:
	.cfi_startproc
	xorl	%r8d, %r8d
	movl	$1234, %esi
	movl	$274877907, %r9d
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%esi, %ecx
	addl	$1, %esi
	imull	%r8d, %ecx
	movl	%ecx, %eax
	imull	%r9d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$6, %edx
	subl	%eax, %edx
	imull	$1000, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, (%rdi,%r8,4)
	addq	$1, %r8
	cmpl	$16778450, %esi
	jne	.L35
	rep ret
	.cfi_endproc
.LFE4888:
	.size	assignArrayi32, .-assignArrayi32
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"[0]= %2u, [1]=%2u, [2]=%2u, [3]=%2u, [4]=%2u, [5]=%2u, [6]=%2u, [7]=%2u,... [8]= %2u, [9]=%2u, [10]=%2u, [11]=%2u, [12]=%2u, [13]=%2u, [14]=%2u, [15]=%2u \n\n"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	printVeci16
	.type	printVeci16, @function
printVeci16:
.LFB4894:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$.LC7, %esi
	movl	$1, %edi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$8, %rsp
	vextracti128	$0x1, %ymm0, tempi16+16(%rip)
	movzwl	tempi16+30(%rip), %eax
	vmovaps	%xmm0, tempi16(%rip)
	movzwl	tempi16+2(%rip), %ecx
	movzwl	tempi16(%rip), %edx
	pushq	%rax
	movzwl	tempi16+28(%rip), %eax
	pushq	%rax
	movzwl	tempi16+26(%rip), %eax
	pushq	%rax
	movzwl	tempi16+24(%rip), %eax
	pushq	%rax
	movzwl	tempi16+22(%rip), %eax
	pushq	%rax
	movzwl	tempi16+20(%rip), %eax
	pushq	%rax
	movzwl	tempi16+18(%rip), %eax
	pushq	%rax
	movzwl	tempi16+16(%rip), %eax
	pushq	%rax
	movzwl	tempi16+14(%rip), %eax
	pushq	%rax
	movzwl	tempi16+12(%rip), %eax
	pushq	%rax
	movzwl	tempi16+10(%rip), %eax
	pushq	%rax
	movzwl	tempi16+8(%rip), %eax
	pushq	%rax
	movzwl	tempi16+6(%rip), %r9d
	xorl	%eax, %eax
	movzwl	tempi16+4(%rip), %r8d
	vzeroupper
	call	__printf_chk
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	addq	$96, %rsp
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4894:
	.size	printVeci16, .-printVeci16
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"[0]= %u, [1]=%u, [2]=%u, [3]=%u, [4]=%u, [5]=%u, [6]=%u, [7]=%u,... [8]= %u, [9]=%u, [10]=%u, [11]=%u, [12]=%u, [13]=%u, [14]=%u, [15]=%u \n\n"
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	printVeci162
	.type	printVeci162, @function
printVeci162:
.LFB4895:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$.LC9, %esi
	movl	$1, %edi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$8, %rsp
	vextracti128	$0x1, %ymm0, tempi16+16(%rip)
	movzwl	tempi16+30(%rip), %eax
	vmovaps	%xmm0, tempi16(%rip)
	movzwl	tempi16+2(%rip), %ecx
	movzwl	tempi16(%rip), %edx
	pushq	%rax
	movzwl	tempi16+28(%rip), %eax
	pushq	%rax
	movzwl	tempi16+26(%rip), %eax
	pushq	%rax
	movzwl	tempi16+24(%rip), %eax
	pushq	%rax
	movzwl	tempi16+22(%rip), %eax
	pushq	%rax
	movzwl	tempi16+20(%rip), %eax
	pushq	%rax
	movzwl	tempi16+18(%rip), %eax
	pushq	%rax
	movzwl	tempi16+16(%rip), %eax
	pushq	%rax
	movzwl	tempi16+14(%rip), %eax
	pushq	%rax
	movzwl	tempi16+12(%rip), %eax
	pushq	%rax
	movzwl	tempi16+10(%rip), %eax
	pushq	%rax
	movzwl	tempi16+8(%rip), %eax
	pushq	%rax
	movzwl	tempi16+6(%rip), %r9d
	xorl	%eax, %eax
	movzwl	tempi16+4(%rip), %r8d
	vzeroupper
	call	__printf_chk
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	addq	$96, %rsp
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4895:
	.size	printVeci162, .-printVeci162
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"[0]= %u, [1]=%u, [2]=%u, [3]=%u, [4]=%u, [5]=%u, [6]=%u, [7]=%u  \n\n"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	printVeci16s
	.type	printVeci16s, @function
printVeci16s:
.LFB4896:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$.LC11, %esi
	movl	$1, %edi
	vmovaps	%xmm0, tempi16(%rip)
	movzwl	tempi16+14(%rip), %eax
	movzwl	tempi16+2(%rip), %ecx
	movzwl	tempi16(%rip), %edx
	movzwl	tempi16+6(%rip), %r9d
	pushq	%rax
	.cfi_def_cfa_offset 24
	movzwl	tempi16+12(%rip), %eax
	movzwl	tempi16+4(%rip), %r8d
	pushq	%rax
	.cfi_def_cfa_offset 32
	movzwl	tempi16+10(%rip), %eax
	pushq	%rax
	.cfi_def_cfa_offset 40
	movzwl	tempi16+8(%rip), %eax
	pushq	%rax
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	call	__printf_chk
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4896:
	.size	printVeci16s, .-printVeci16s
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"[0]= %d, [1]=%d, [2]=%d, [3]=%d, [4]=%d, [5]=%d, [6]=%d, [7]=%d \n\n"
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	printVeci32
	.type	printVeci32, @function
printVeci32:
.LFB4897:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$.LC13, %esi
	movl	$1, %edi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$8, %rsp
	vextracti128	$0x1, %ymm0, tempi32+16(%rip)
	movl	tempi32+28(%rip), %eax
	vmovaps	%xmm0, tempi32(%rip)
	movl	tempi32+12(%rip), %r9d
	movl	tempi32+8(%rip), %r8d
	pushq	%rax
	movl	tempi32+24(%rip), %eax
	movl	tempi32+4(%rip), %ecx
	movl	tempi32(%rip), %edx
	pushq	%rax
	movl	tempi32+20(%rip), %eax
	pushq	%rax
	movl	tempi32+16(%rip), %eax
	pushq	%rax
	xorl	%eax, %eax
	vzeroupper
	call	__printf_chk
	movq	-8(%rbp), %r10
	.cfi_def_cfa 10, 0
	addq	$32, %rsp
	leave
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4897:
	.size	printVeci32, .-printVeci32
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"[0]= %u, [1]=%u, [2]=%u, [3]=%u \n\n"
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	printVecu64
	.type	printVecu64, @function
printVecu64:
.LFB4898:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vextracti128	$0x1, %ymm0, tempu64+16(%rip)
	vmovaps	%xmm0, tempu64(%rip)
	movq	tempu64+24(%rip), %r9
	movq	tempu64+16(%rip), %r8
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC15, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	tempu64+8(%rip), %rcx
	movq	tempu64(%rip), %rdx
	pushq	%r13
	.cfi_offset 13, -24
	vzeroupper
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	__printf_chk
	.cfi_endproc
.LFE4898:
	.size	printVecu64, .-printVecu64
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	", [0]=%3.2f, [1]=%3.2f, [2]=%3.2f, [3]=%3.2f, [4]=%3.2f, [5]=%3.2f, [6]=%3.2f, [7]=%3.2f \n"
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	printVecps
	.type	printVecps, @function
printVecps:
.LFB4899:
	.cfi_startproc
	vmovaps	%xmm0, tempps(%rip)
	vextractf128	$0x1, %ymm0, tempps+16(%rip)
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$.LC17, %esi
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vxorpd	%xmm6, %xmm6, %xmm6
	pushq	%r13
	.cfi_offset 13, -24
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtss2sd	tempps(%rip), %xmm0, %xmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	tempps+28(%rip), %xmm7, %xmm7
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	tempps+24(%rip), %xmm6, %xmm6
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	tempps+20(%rip), %xmm5, %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	tempps+16(%rip), %xmm4, %xmm4
	vcvtss2sd	tempps+12(%rip), %xmm3, %xmm3
	movl	$1, %edi
	movl	$8, %eax
	vcvtss2sd	tempps+8(%rip), %xmm2, %xmm2
	vcvtss2sd	tempps+4(%rip), %xmm1, %xmm1
	vzeroupper
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	__printf_chk
	.cfi_endproc
.LFE4899:
	.size	printVecps, .-printVecps
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC19:
	.string	"The matrix is :"
.LC20:
	.string	"%f , "
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	printMatrixf
	.type	printMatrixf, @function
printMatrixf:
.LFB4900:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC19, %edi
	leaq	67108864(%rbx), %r12
	call	puts
	.p2align 4,,10
	.p2align 3
.L50:
	leaq	16384(%rbx), %rbp
	.p2align 4,,10
	.p2align 3
.L51:
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$.LC20, %esi
	movl	$1, %edi
	movl	$1, %eax
	addq	$4, %rbx
	vcvtss2sd	-4(%rbx), %xmm0, %xmm0
	call	__printf_chk
	cmpq	%rbp, %rbx
	jne	.L51
	movl	$10, %edi
	call	putchar
	cmpq	%r12, %rbx
	jne	.L50
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4900:
	.size	printMatrixf, .-printMatrixf
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.rodata.str1.1
.LC22:
	.string	"%3d , "
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	printMatrixi
	.type	printMatrixi, @function
printMatrixi:
.LFB4901:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movl	$.LC19, %edi
	leaq	67108864(%rbx), %r12
	call	puts
	.p2align 4,,10
	.p2align 3
.L57:
	leaq	16384(%rbx), %rbp
	.p2align 4,,10
	.p2align 3
.L58:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC22, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	%rbp, %rbx
	jne	.L58
	movl	$10, %edi
	call	putchar
	cmpq	%rbx, %r12
	jne	.L57
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4901:
	.size	printMatrixi, .-printMatrixi
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.globl	printMatrixsui
	.type	printMatrixsui, @function
printMatrixsui:
.LFB4902:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	33562624(%r13), %rbp
	movl	$.LC19, %edi
	movl	$4096, %r12d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	puts
	.p2align 4,,10
	.p2align 3
.L64:
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L65:
	movzwl	(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC22, %esi
	movl	$1, %edi
	addq	$8194, %rbx
	call	__printf_chk
	cmpq	%rbp, %rbx
	jne	.L65
	movl	$10, %edi
	call	putchar
	subl	$1, %r12d
	jne	.L64
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4902:
	.size	printMatrixsui, .-printMatrixsui
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.rodata.str1.1
.LC25:
	.string	" original vector : "
.LC26:
	.string	"\n"
.LC27:
	.string	"            vec1 : "
.LC29:
	.string	"      sumTotal_v : "
	.section	.text.unlikely
.LCOLDB32:
	.section	.text.startup,"ax",@progbits
.LHOTB32:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4903:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	leaq	-64(%rbp), %rdx
	subq	$232, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L71:
	movw	%ax, (%rdx)
	addl	$1, %eax
	addq	$2, %rdx
	cmpl	$17, %eax
	jne	.L71
	vmovdqu	-64(%rbp), %ymm4
	movl	$.LC25, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	vmovdqa	%ymm4, -112(%rbp)
	vmovdqa	%ymm4, -176(%rbp)
	vzeroupper
	call	__printf_chk
	vmovdqa	-112(%rbp), %ymm0
	call	printVeci16
	movl	$.LC26, %edi
	call	puts
	movl	$.LC27, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	vmovdqa	-112(%rbp), %ymm4
	vmovdqa	.LC28(%rip), %ymm1
	vpsrldq	$2, %ymm4, %ymm0
	vpermd	%ymm4, %ymm1, %ymm1
	vpaddw	%ymm1, %ymm0, %ymm1
	vpaddw	-112(%rbp), %ymm1, %ymm1
	vmovdqa	%ymm1, %ymm0
	vmovdqa	%ymm1, -240(%rbp)
	call	printVeci16
	movl	$.LC26, %edi
	call	puts
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	-176(%rbp), %ymm2
	vmovdqa	-112(%rbp), %ymm7
	movl	$.LC29, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	vmovdqa	%ymm2, -208(%rbp)
	vperm2i128	$49, %ymm0, %ymm2, %ymm0
	vpslldq	$2, %ymm7, %ymm6
	vmovdqa	%ymm6, -144(%rbp)
	vpalignr	$2, %ymm2, %ymm0, %ymm3
	vmovdqa	%ymm3, -176(%rbp)
	vzeroupper
	call	__printf_chk
	vmovdqa	-176(%rbp), %ymm5
	vmovdqa	.LC30(%rip), %ymm3
	vmovdqa	-240(%rbp), %ymm1
	vpaddw	-144(%rbp), %ymm5, %ymm0
	vpaddw	-112(%rbp), %ymm0, %ymm0
	vpblendvb	%ymm3, %ymm0, %ymm1, %ymm0
	call	printVeci16
	movl	$.LC26, %edi
	call	puts
	vmovdqa	-208(%rbp), %ymm2
	movl	$.LC29, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	vperm2i128	$1, %ymm2, %ymm2, %ymm0
	vpalignr	$14, %ymm0, %ymm2, %ymm6
	vpalignr	$12, %ymm0, %ymm2, %ymm7
	vmovdqa	%ymm6, -144(%rbp)
	vmovdqa	%ymm7, -176(%rbp)
	vzeroupper
	call	__printf_chk
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	-176(%rbp), %ymm3
	vmovdqa	.LC31(%rip), %ymm2
	vpaddw	-144(%rbp), %ymm3, %ymm1
	vpaddw	-112(%rbp), %ymm1, %ymm1
	vpblendvb	%ymm2, %ymm1, %ymm0, %ymm0
	call	printVeci16
	movl	$.LC26, %edi
	call	puts
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	jne	.L76
	addq	$232, %rsp
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L76:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE4903:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE32:
	.section	.text.startup
.LHOTE32:
	.comm	tempps,32,32
	.comm	tempu64,32,32
	.comm	tempi32,32,32
	.comm	tempi16,32,32
	.comm	temp8i16,16,16
	.comm	mask,128,32
	.comm	start,16,16
	.globl	mTime
	.data
	.align 8
	.type	mTime, @object
	.size	mTime, 8
mTime:
	.long	0
	.long	1076101120
	.globl	pTime
	.bss
	.align 8
	.type	pTime, @object
	.size	pTime, 8
pTime:
	.zero	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2439541424
	.long	1069513965
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC28:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	7
	.align 32
.LC30:
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align 32
.LC31:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-128
	.byte	-128
	.byte	0
	.byte	0
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
