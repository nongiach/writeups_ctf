.intel_syntax
.global _start

_start:
	# Store xmm0 on the stack
	movss [%rsp], %xmm0

	# write(stdout, stack, 8)
	mov %rax, 1
	mov %rdi, 1
	mov %rsi, %rsp
	mov %rdx, 8
	syscall

	# exit(0)
	mov %rax, 60
	mov %rdi, 0
	syscall
