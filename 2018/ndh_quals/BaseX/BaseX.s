
BaseX:     file format elf64-x86-64


Disassembly of section .init:

00000000004004d8 <.init>:
  4004d8:	48 83 ec 08          	sub    rsp,0x8
  4004dc:	48 8b 05 15 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b15]        # 600ff8 <strtoul@plt+0x200ac8>
  4004e3:	48 85 c0             	test   rax,rax
  4004e6:	74 02                	je     4004ea <fread@plt-0x16>
  4004e8:	ff d0                	call   rax
  4004ea:	48 83 c4 08          	add    rsp,0x8
  4004ee:	c3                   	ret    

Disassembly of section .plt:

00000000004004f0 <fread@plt-0x10>:
  4004f0:	ff 35 12 0b 20 00    	push   QWORD PTR [rip+0x200b12]        # 601008 <strtoul@plt+0x200ad8>
  4004f6:	ff 25 14 0b 20 00    	jmp    QWORD PTR [rip+0x200b14]        # 601010 <strtoul@plt+0x200ae0>
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400500 <fread@plt>:
  400500:	ff 25 12 0b 20 00    	jmp    QWORD PTR [rip+0x200b12]        # 601018 <strtoul@plt+0x200ae8>
  400506:	68 00 00 00 00       	push   0x0
  40050b:	e9 e0 ff ff ff       	jmp    4004f0 <fread@plt-0x10>

0000000000400510 <strlen@plt>:
  400510:	ff 25 0a 0b 20 00    	jmp    QWORD PTR [rip+0x200b0a]        # 601020 <strtoul@plt+0x200af0>
  400516:	68 01 00 00 00       	push   0x1
  40051b:	e9 d0 ff ff ff       	jmp    4004f0 <fread@plt-0x10>

0000000000400520 <__stack_chk_fail@plt>:
  400520:	ff 25 02 0b 20 00    	jmp    QWORD PTR [rip+0x200b02]        # 601028 <strtoul@plt+0x200af8>
  400526:	68 02 00 00 00       	push   0x2
  40052b:	e9 c0 ff ff ff       	jmp    4004f0 <fread@plt-0x10>

0000000000400530 <strtoul@plt>:
  400530:	ff 25 fa 0a 20 00    	jmp    QWORD PTR [rip+0x200afa]        # 601030 <strtoul@plt+0x200b00>
  400536:	68 03 00 00 00       	push   0x3
  40053b:	e9 b0 ff ff ff       	jmp    4004f0 <fread@plt-0x10>

Disassembly of section .text:

0000000000400540 <.text>:
  400540:	31 ed                	xor    ebp,ebp
  400542:	49 89 d1             	mov    r9,rdx
  400545:	5e                   	pop    rsi
  400546:	48 89 e2             	mov    rdx,rsp
  400549:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40054d:	50                   	push   rax
  40054e:	54                   	push   rsp
  40054f:	49 c7 c0 00 09 40 00 	mov    r8,0x400900
  400556:	48 c7 c1 90 08 40 00 	mov    rcx,0x400890
  40055d:	48 c7 c7 62 07 40 00 	mov    rdi,0x400762
  400564:	ff 15 86 0a 20 00    	call   QWORD PTR [rip+0x200a86]        # 600ff0 <strtoul@plt+0x200ac0>
  40056a:	f4                   	hlt    
  40056b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400570:	55                   	push   rbp
  400571:	b8 40 10 60 00       	mov    eax,0x601040
  400576:	48 3d 40 10 60 00    	cmp    rax,0x601040
  40057c:	48 89 e5             	mov    rbp,rsp
  40057f:	74 17                	je     400598 <strtoul@plt+0x68>
  400581:	b8 00 00 00 00       	mov    eax,0x0
  400586:	48 85 c0             	test   rax,rax
  400589:	74 0d                	je     400598 <strtoul@plt+0x68>
  40058b:	5d                   	pop    rbp
  40058c:	bf 40 10 60 00       	mov    edi,0x601040
  400591:	ff e0                	jmp    rax
  400593:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400598:	5d                   	pop    rbp
  400599:	c3                   	ret    
  40059a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4005a0:	be 40 10 60 00       	mov    esi,0x601040
  4005a5:	55                   	push   rbp
  4005a6:	48 81 ee 40 10 60 00 	sub    rsi,0x601040
  4005ad:	48 89 e5             	mov    rbp,rsp
  4005b0:	48 c1 fe 03          	sar    rsi,0x3
  4005b4:	48 89 f0             	mov    rax,rsi
  4005b7:	48 c1 e8 3f          	shr    rax,0x3f
  4005bb:	48 01 c6             	add    rsi,rax
  4005be:	48 d1 fe             	sar    rsi,1
  4005c1:	74 15                	je     4005d8 <strtoul@plt+0xa8>
  4005c3:	b8 00 00 00 00       	mov    eax,0x0
  4005c8:	48 85 c0             	test   rax,rax
  4005cb:	74 0b                	je     4005d8 <strtoul@plt+0xa8>
  4005cd:	5d                   	pop    rbp
  4005ce:	bf 40 10 60 00       	mov    edi,0x601040
  4005d3:	ff e0                	jmp    rax
  4005d5:	0f 1f 00             	nop    DWORD PTR [rax]
  4005d8:	5d                   	pop    rbp
  4005d9:	c3                   	ret    
  4005da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4005e0:	80 3d 61 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a61],0x0        # 601048 <stdin@@GLIBC_2.2.5+0x8>
  4005e7:	75 17                	jne    400600 <strtoul@plt+0xd0>
  4005e9:	55                   	push   rbp
  4005ea:	48 89 e5             	mov    rbp,rsp
  4005ed:	e8 7e ff ff ff       	call   400570 <strtoul@plt+0x40>
  4005f2:	c6 05 4f 0a 20 00 01 	mov    BYTE PTR [rip+0x200a4f],0x1        # 601048 <stdin@@GLIBC_2.2.5+0x8>
  4005f9:	5d                   	pop    rbp
  4005fa:	c3                   	ret    
  4005fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400600:	f3 c3                	repz ret 
  400602:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400606:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40060d:	00 00 00 
  400610:	55                   	push   rbp
  400611:	48 89 e5             	mov    rbp,rsp
  400614:	5d                   	pop    rbp
  400615:	eb 89                	jmp    4005a0 <strtoul@plt+0x70>
  400617:	55                   	push   rbp
  400618:	48 89 e5             	mov    rbp,rsp
  40061b:	48 83 ec 30          	sub    rsp,0x30
  40061f:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
  400622:	89 75 d8             	mov    DWORD PTR [rbp-0x28],esi
  400625:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40062c:	00 00 
  40062e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400632:	31 c0                	xor    eax,eax
  400634:	83 7d d8 00          	cmp    DWORD PTR [rbp-0x28],0x0
  400638:	75 07                	jne    400641 <strtoul@plt+0x111>
  40063a:	b8 01 00 00 00       	mov    eax,0x1
  40063f:	eb 36                	jmp    400677 <strtoul@plt+0x147>
  400641:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400644:	48 98                	cdqe   
  400646:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  40064a:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400651:	eb 15                	jmp    400668 <strtoul@plt+0x138>
  400653:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400656:	48 98                	cdqe   
  400658:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40065c:	48 0f af c2          	imul   rax,rdx
  400660:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400664:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  400668:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  40066b:	83 e8 01             	sub    eax,0x1
  40066e:	39 45 ec             	cmp    DWORD PTR [rbp-0x14],eax
  400671:	7c e0                	jl     400653 <strtoul@plt+0x123>
  400673:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400677:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  40067b:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  400682:	00 00 
  400684:	74 05                	je     40068b <strtoul@plt+0x15b>
  400686:	e8 95 fe ff ff       	call   400520 <__stack_chk_fail@plt>
  40068b:	c9                   	leave  
  40068c:	c3                   	ret    
  40068d:	55                   	push   rbp
  40068e:	48 89 e5             	mov    rbp,rsp
  400691:	53                   	push   rbx
  400692:	48 83 ec 38          	sub    rsp,0x38
  400696:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  40069a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4006a1:	00 00 
  4006a3:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4006a7:	31 c0                	xor    eax,eax
  4006a9:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  4006b0:	00 
  4006b1:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
  4006b8:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006bc:	48 89 c7             	mov    rdi,rax
  4006bf:	e8 4c fe ff ff       	call   400510 <strlen@plt>
  4006c4:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  4006c7:	eb 66                	jmp    40072f <strtoul@plt+0x1ff>
  4006c9:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4006cc:	48 63 d0             	movsxd rdx,eax
  4006cf:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006d3:	48 01 d0             	add    rax,rdx
  4006d6:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006d9:	3c 2f                	cmp    al,0x2f
  4006db:	7e 14                	jle    4006f1 <strtoul@plt+0x1c1>
  4006dd:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4006e0:	48 63 d0             	movsxd rdx,eax
  4006e3:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006e7:	48 01 d0             	add    rax,rdx
  4006ea:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006ed:	3c 4e                	cmp    al,0x4e
  4006ef:	7e 06                	jle    4006f7 <strtoul@plt+0x1c7>
  4006f1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4006f5:	eb 50                	jmp    400747 <strtoul@plt+0x217>
  4006f7:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4006fa:	48 63 d0             	movsxd rdx,eax
  4006fd:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400701:	48 01 d0             	add    rax,rdx
  400704:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400707:	0f be c0             	movsx  eax,al
  40070a:	83 e8 30             	sub    eax,0x30
  40070d:	48 63 d8             	movsxd rbx,eax
  400710:	83 6d dc 01          	sub    DWORD PTR [rbp-0x24],0x1
  400714:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400717:	89 c6                	mov    esi,eax
  400719:	bf 1f 00 00 00       	mov    edi,0x1f
  40071e:	e8 f4 fe ff ff       	call   400617 <strtoul@plt+0xe7>
  400723:	48 0f af c3          	imul   rax,rbx
  400727:	48 01 45 e0          	add    QWORD PTR [rbp-0x20],rax
  40072b:	83 45 d8 01          	add    DWORD PTR [rbp-0x28],0x1
  40072f:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  400732:	48 63 d0             	movsxd rdx,eax
  400735:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400739:	48 01 d0             	add    rax,rdx
  40073c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40073f:	84 c0                	test   al,al
  400741:	75 86                	jne    4006c9 <strtoul@plt+0x199>
  400743:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400747:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  40074b:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  400752:	00 00 
  400754:	74 05                	je     40075b <strtoul@plt+0x22b>
  400756:	e8 c5 fd ff ff       	call   400520 <__stack_chk_fail@plt>
  40075b:	48 83 c4 38          	add    rsp,0x38
  40075f:	5b                   	pop    rbx
  400760:	5d                   	pop    rbp
  400761:	c3                   	ret    
  400762:	55                   	push   rbp
  400763:	48 89 e5             	mov    rbp,rsp
  400766:	48 81 ec 40 10 00 00 	sub    rsp,0x1040
  40076d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400774:	00 00 
  400776:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40077a:	31 c0                	xor    eax,eax
  40077c:	48 c7 85 d0 ef ff ff 	mov    QWORD PTR [rbp-0x1030],0x0
  400783:	00 00 00 00 
  400787:	48 c7 85 d8 ef ff ff 	mov    QWORD PTR [rbp-0x1028],0x0
  40078e:	00 00 00 00 
  400792:	48 8d 95 e0 ef ff ff 	lea    rdx,[rbp-0x1020]
  400799:	b8 00 00 00 00       	mov    eax,0x0
  40079e:	b9 00 02 00 00       	mov    ecx,0x200
  4007a3:	48 89 d7             	mov    rdi,rdx
  4007a6:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4007a9:	c7 85 cc ef ff ff 00 	mov    DWORD PTR [rbp-0x1034],0x0
  4007b0:	00 00 00 
  4007b3:	e9 85 00 00 00       	jmp    40083d <strtoul@plt+0x30d>
  4007b8:	c6 45 f4 00          	mov    BYTE PTR [rbp-0xc],0x0
  4007bc:	83 bd cc ef ff ff 00 	cmp    DWORD PTR [rbp-0x1034],0x0
  4007c3:	75 1f                	jne    4007e4 <strtoul@plt+0x2b4>
  4007c5:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4007c9:	48 89 c7             	mov    rdi,rax
  4007cc:	e8 bc fe ff ff       	call   40068d <strtoul@plt+0x15d>
  4007d1:	48 89 85 d0 ef ff ff 	mov    QWORD PTR [rbp-0x1030],rax
  4007d8:	c7 85 cc ef ff ff 01 	mov    DWORD PTR [rbp-0x1034],0x1
  4007df:	00 00 00 
  4007e2:	eb 2f                	jmp    400813 <strtoul@plt+0x2e3>
  4007e4:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4007e8:	ba 0a 00 00 00       	mov    edx,0xa
  4007ed:	be 00 00 00 00       	mov    esi,0x0
  4007f2:	48 89 c7             	mov    rdi,rax
  4007f5:	e8 36 fd ff ff       	call   400530 <strtoul@plt>
  4007fa:	48 89 85 d8 ef ff ff 	mov    QWORD PTR [rbp-0x1028],rax
  400801:	48 c1 ad d8 ef ff ff 	shr    QWORD PTR [rbp-0x1028],0x20
  400808:	20 
  400809:	c7 85 cc ef ff ff 00 	mov    DWORD PTR [rbp-0x1034],0x0
  400810:	00 00 00 
  400813:	48 83 bd d0 ef ff ff 	cmp    QWORD PTR [rbp-0x1030],0x0
  40081a:	00 
  40081b:	74 20                	je     40083d <strtoul@plt+0x30d>
  40081d:	48 83 bd d8 ef ff ff 	cmp    QWORD PTR [rbp-0x1028],0x0
  400824:	00 
  400825:	74 16                	je     40083d <strtoul@plt+0x30d>
  400827:	48 8b 85 d8 ef ff ff 	mov    rax,QWORD PTR [rbp-0x1028]
  40082e:	48 8b 95 d0 ef ff ff 	mov    rdx,QWORD PTR [rbp-0x1030]
  400835:	48 89 94 c5 e0 ef ff 	mov    QWORD PTR [rbp+rax*8-0x1020],rdx
  40083c:	ff 
  40083d:	48 8b 15 fc 07 20 00 	mov    rdx,QWORD PTR [rip+0x2007fc]        # 601040 <stdin@@GLIBC_2.2.5>
  400844:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  400848:	48 89 d1             	mov    rcx,rdx
  40084b:	ba 14 00 00 00       	mov    edx,0x14
  400850:	be 01 00 00 00       	mov    esi,0x1
  400855:	48 89 c7             	mov    rdi,rax
  400858:	e8 a3 fc ff ff       	call   400500 <fread@plt>
  40085d:	48 83 f8 14          	cmp    rax,0x14
  400861:	0f 84 51 ff ff ff    	je     4007b8 <strtoul@plt+0x288>
  400867:	b8 00 00 00 00       	mov    eax,0x0
  40086c:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  400870:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  400877:	00 00 
  400879:	74 05                	je     400880 <strtoul@plt+0x350>
  40087b:	e8 a0 fc ff ff       	call   400520 <__stack_chk_fail@plt>
  400880:	c9                   	leave  
  400881:	c3                   	ret    
  400882:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400889:	00 00 00 
  40088c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400890:	41 57                	push   r15
  400892:	41 56                	push   r14
  400894:	49 89 d7             	mov    r15,rdx
  400897:	41 55                	push   r13
  400899:	41 54                	push   r12
  40089b:	4c 8d 25 6e 05 20 00 	lea    r12,[rip+0x20056e]        # 600e10 <strtoul@plt+0x2008e0>
  4008a2:	55                   	push   rbp
  4008a3:	48 8d 2d 6e 05 20 00 	lea    rbp,[rip+0x20056e]        # 600e18 <strtoul@plt+0x2008e8>
  4008aa:	53                   	push   rbx
  4008ab:	41 89 fd             	mov    r13d,edi
  4008ae:	49 89 f6             	mov    r14,rsi
  4008b1:	4c 29 e5             	sub    rbp,r12
  4008b4:	48 83 ec 08          	sub    rsp,0x8
  4008b8:	48 c1 fd 03          	sar    rbp,0x3
  4008bc:	e8 17 fc ff ff       	call   4004d8 <fread@plt-0x28>
  4008c1:	48 85 ed             	test   rbp,rbp
  4008c4:	74 20                	je     4008e6 <strtoul@plt+0x3b6>
  4008c6:	31 db                	xor    ebx,ebx
  4008c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4008cf:	00 
  4008d0:	4c 89 fa             	mov    rdx,r15
  4008d3:	4c 89 f6             	mov    rsi,r14
  4008d6:	44 89 ef             	mov    edi,r13d
  4008d9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4008dd:	48 83 c3 01          	add    rbx,0x1
  4008e1:	48 39 dd             	cmp    rbp,rbx
  4008e4:	75 ea                	jne    4008d0 <strtoul@plt+0x3a0>
  4008e6:	48 83 c4 08          	add    rsp,0x8
  4008ea:	5b                   	pop    rbx
  4008eb:	5d                   	pop    rbp
  4008ec:	41 5c                	pop    r12
  4008ee:	41 5d                	pop    r13
  4008f0:	41 5e                	pop    r14
  4008f2:	41 5f                	pop    r15
  4008f4:	c3                   	ret    
  4008f5:	90                   	nop
  4008f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4008fd:	00 00 00 
  400900:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400904 <.fini>:
  400904:	48 83 ec 08          	sub    rsp,0x8
  400908:	48 83 c4 08          	add    rsp,0x8
  40090c:	c3                   	ret    
