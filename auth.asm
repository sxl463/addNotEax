
auth:     file format elf32-i386


Disassembly of section .init:

08048328 <_init>:
 8048328:	53                   	push   %ebx
 8048329:	83 ec 08             	sub    $0x8,%esp
 804832c:	e8 bf 00 00 00       	call   80483f0 <__x86.get_pc_thunk.bx>
 8048331:	81 c3 cf 1c 00 00    	add    $0x1ccf,%ebx
 8048337:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804833d:	85 c0                	test   %eax,%eax
 804833f:	74 05                	je     8048346 <_init+0x1e>
 8048341:	e8 6a 00 00 00       	call   80483b0 <fgetc@plt+0x10>
 8048346:	83 c4 08             	add    $0x8,%esp
 8048349:	5b                   	pop    %ebx
 804834a:	c3                   	ret    

Disassembly of section .plt:

08048350 <printf@plt-0x10>:
 8048350:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048356:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804835c:	00 00                	add    %al,(%eax)
	...

08048360 <printf@plt>:
 8048360:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048366:	68 00 00 00 00       	push   $0x0
 804836b:	e9 e0 ff ff ff       	jmp    8048350 <_init+0x28>

08048370 <fclose@plt>:
 8048370:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048376:	68 08 00 00 00       	push   $0x8
 804837b:	e9 d0 ff ff ff       	jmp    8048350 <_init+0x28>

08048380 <__libc_start_main@plt>:
 8048380:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048386:	68 10 00 00 00       	push   $0x10
 804838b:	e9 c0 ff ff ff       	jmp    8048350 <_init+0x28>

08048390 <fopen@plt>:
 8048390:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048396:	68 18 00 00 00       	push   $0x18
 804839b:	e9 b0 ff ff ff       	jmp    8048350 <_init+0x28>

080483a0 <fgetc@plt>:
 80483a0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483a6:	68 20 00 00 00       	push   $0x20
 80483ab:	e9 a0 ff ff ff       	jmp    8048350 <_init+0x28>

Disassembly of section .plt.got:

080483b0 <.plt.got>:
 80483b0:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080483c0 <_start>:
 80483c0:	31 ed                	xor    %ebp,%ebp
 80483c2:	5e                   	pop    %esi
 80483c3:	89 e1                	mov    %esp,%ecx
 80483c5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483c8:	50                   	push   %eax
 80483c9:	54                   	push   %esp
 80483ca:	52                   	push   %edx
 80483cb:	68 00 86 04 08       	push   $0x8048600
 80483d0:	68 90 85 04 08       	push   $0x8048590
 80483d5:	51                   	push   %ecx
 80483d6:	56                   	push   %esi
 80483d7:	68 f0 84 04 08       	push   $0x80484f0
 80483dc:	e8 9f ff ff ff       	call   8048380 <__libc_start_main@plt>
 80483e1:	f4                   	hlt    
 80483e2:	66 90                	xchg   %ax,%ax
 80483e4:	66 90                	xchg   %ax,%ax
 80483e6:	66 90                	xchg   %ax,%ax
 80483e8:	66 90                	xchg   %ax,%ax
 80483ea:	66 90                	xchg   %ax,%ax
 80483ec:	66 90                	xchg   %ax,%ax
 80483ee:	66 90                	xchg   %ax,%ax

080483f0 <__x86.get_pc_thunk.bx>:
 80483f0:	8b 1c 24             	mov    (%esp),%ebx
 80483f3:	c3                   	ret    
 80483f4:	66 90                	xchg   %ax,%ax
 80483f6:	66 90                	xchg   %ax,%ax
 80483f8:	66 90                	xchg   %ax,%ax
 80483fa:	66 90                	xchg   %ax,%ax
 80483fc:	66 90                	xchg   %ax,%ax
 80483fe:	66 90                	xchg   %ax,%ax

08048400 <deregister_tm_clones>:
 8048400:	b8 2b a0 04 08       	mov    $0x804a02b,%eax
 8048405:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804840a:	83 f8 06             	cmp    $0x6,%eax
 804840d:	77 01                	ja     8048410 <deregister_tm_clones+0x10>
 804840f:	c3                   	ret    
 8048410:	b8 00 00 00 00       	mov    $0x0,%eax
 8048415:	85 c0                	test   %eax,%eax
 8048417:	74 f6                	je     804840f <deregister_tm_clones+0xf>
 8048419:	55                   	push   %ebp
 804841a:	89 e5                	mov    %esp,%ebp
 804841c:	83 ec 18             	sub    $0x18,%esp
 804841f:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048426:	ff d0                	call   *%eax
 8048428:	c9                   	leave  
 8048429:	c3                   	ret    
 804842a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048430 <register_tm_clones>:
 8048430:	b8 28 a0 04 08       	mov    $0x804a028,%eax
 8048435:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804843a:	c1 f8 02             	sar    $0x2,%eax
 804843d:	89 c2                	mov    %eax,%edx
 804843f:	c1 ea 1f             	shr    $0x1f,%edx
 8048442:	01 d0                	add    %edx,%eax
 8048444:	d1 f8                	sar    %eax
 8048446:	75 01                	jne    8048449 <register_tm_clones+0x19>
 8048448:	c3                   	ret    
 8048449:	ba 00 00 00 00       	mov    $0x0,%edx
 804844e:	85 d2                	test   %edx,%edx
 8048450:	74 f6                	je     8048448 <register_tm_clones+0x18>
 8048452:	55                   	push   %ebp
 8048453:	89 e5                	mov    %esp,%ebp
 8048455:	83 ec 18             	sub    $0x18,%esp
 8048458:	89 44 24 04          	mov    %eax,0x4(%esp)
 804845c:	c7 04 24 28 a0 04 08 	movl   $0x804a028,(%esp)
 8048463:	ff d2                	call   *%edx
 8048465:	c9                   	leave  
 8048466:	c3                   	ret    
 8048467:	89 f6                	mov    %esi,%esi
 8048469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048470 <__do_global_dtors_aux>:
 8048470:	80 3d 28 a0 04 08 00 	cmpb   $0x0,0x804a028
 8048477:	75 13                	jne    804848c <__do_global_dtors_aux+0x1c>
 8048479:	55                   	push   %ebp
 804847a:	89 e5                	mov    %esp,%ebp
 804847c:	83 ec 08             	sub    $0x8,%esp
 804847f:	e8 7c ff ff ff       	call   8048400 <deregister_tm_clones>
 8048484:	c6 05 28 a0 04 08 01 	movb   $0x1,0x804a028
 804848b:	c9                   	leave  
 804848c:	f3 c3                	repz ret 
 804848e:	66 90                	xchg   %ax,%ax

08048490 <frame_dummy>:
 8048490:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 8048495:	85 c0                	test   %eax,%eax
 8048497:	74 1f                	je     80484b8 <frame_dummy+0x28>
 8048499:	b8 00 00 00 00       	mov    $0x0,%eax
 804849e:	85 c0                	test   %eax,%eax
 80484a0:	74 16                	je     80484b8 <frame_dummy+0x28>
 80484a2:	55                   	push   %ebp
 80484a3:	89 e5                	mov    %esp,%ebp
 80484a5:	83 ec 18             	sub    $0x18,%esp
 80484a8:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 80484af:	ff d0                	call   *%eax
 80484b1:	c9                   	leave  
 80484b2:	e9 79 ff ff ff       	jmp    8048430 <register_tm_clones>
 80484b7:	90                   	nop
 80484b8:	e9 73 ff ff ff       	jmp    8048430 <register_tm_clones>
 80484bd:	66 90                	xchg   %ax,%ax
 80484bf:	90                   	nop

080484c0 <auth>:
 80484c0:	55                   	push   %ebp
 80484c1:	89 e5                	mov    %esp,%ebp
 80484c3:	50                   	push   %eax
 80484c4:	8a 45 08             	mov    0x8(%ebp),%al
 80484c7:	88 45 ff             	mov    %al,-0x1(%ebp)
 80484ca:	0f be 4d ff          	movsbl -0x1(%ebp),%ecx
 80484ce:	83 f9 61             	cmp    $0x61,%ecx
 80484d1:	0f 94 c0             	sete   %al
 80484d4:	24 01                	and    $0x1,%al
 80484d6:	0f b6 c0             	movzbl %al,%eax
 80484d9:	83 c4 04             	add    $0x4,%esp
 80484dc:	5d                   	pop    %ebp
 80484dd:	f7 d0                	not    %eax
 80484df:	f7 d0                	not    %eax
 80484e1:	c3                   	ret    
 80484e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%eax,%eax,1)
 80484e9:	1f 84 00 00 00 00 00 

080484f0 <main>:
 80484f0:	55                   	push   %ebp
 80484f1:	89 e5                	mov    %esp,%ebp
 80484f3:	83 ec 28             	sub    $0x28,%esp
 80484f6:	8d 05 2d 86 04 08    	lea    0x804862d,%eax
 80484fc:	8d 0d 20 86 04 08    	lea    0x8048620,%ecx
 8048502:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048509:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 804850c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 804850f:	89 0c 24             	mov    %ecx,(%esp)
 8048512:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048516:	e8 75 fe ff ff       	call   8048390 <fopen@plt>
 804851b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804851e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048521:	89 04 24             	mov    %eax,(%esp)
 8048524:	e8 77 fe ff ff       	call   80483a0 <fgetc@plt>
 8048529:	88 c2                	mov    %al,%dl
 804852b:	88 55 f3             	mov    %dl,-0xd(%ebp)
 804852e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
 8048532:	89 04 24             	mov    %eax,(%esp)
 8048535:	e8 86 ff ff ff       	call   80484c0 <auth>
 804853a:	83 f8 00             	cmp    $0x0,%eax
 804853d:	74 13                	je     8048552 <main+0x62>
 804853f:	8d 05 2f 86 04 08    	lea    0x804862f,%eax
 8048545:	89 04 24             	mov    %eax,(%esp)
 8048548:	e8 13 fe ff ff       	call   8048360 <printf@plt>
 804854d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048550:	eb 11                	jmp    8048563 <main+0x73>
 8048552:	8d 05 34 86 04 08    	lea    0x8048634,%eax
 8048558:	89 04 24             	mov    %eax,(%esp)
 804855b:	e8 00 fe ff ff       	call   8048360 <printf@plt>
 8048560:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048563:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048566:	89 04 24             	mov    %eax,(%esp)
 8048569:	e8 02 fe ff ff       	call   8048370 <fclose@plt>
 804856e:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048573:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048576:	89 c8                	mov    %ecx,%eax
 8048578:	83 c4 28             	add    $0x28,%esp
 804857b:	5d                   	pop    %ebp
 804857c:	f7 d0                	not    %eax
 804857e:	f7 d0                	not    %eax
 8048580:	c3                   	ret    
 8048581:	66 90                	xchg   %ax,%ax
 8048583:	66 90                	xchg   %ax,%ax
 8048585:	66 90                	xchg   %ax,%ax
 8048587:	66 90                	xchg   %ax,%ax
 8048589:	66 90                	xchg   %ax,%ax
 804858b:	66 90                	xchg   %ax,%ax
 804858d:	66 90                	xchg   %ax,%ax
 804858f:	90                   	nop

08048590 <__libc_csu_init>:
 8048590:	55                   	push   %ebp
 8048591:	57                   	push   %edi
 8048592:	31 ff                	xor    %edi,%edi
 8048594:	56                   	push   %esi
 8048595:	53                   	push   %ebx
 8048596:	e8 55 fe ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 804859b:	81 c3 65 1a 00 00    	add    $0x1a65,%ebx
 80485a1:	83 ec 1c             	sub    $0x1c,%esp
 80485a4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80485a8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485ae:	e8 75 fd ff ff       	call   8048328 <_init>
 80485b3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485b9:	29 c6                	sub    %eax,%esi
 80485bb:	c1 fe 02             	sar    $0x2,%esi
 80485be:	85 f6                	test   %esi,%esi
 80485c0:	74 27                	je     80485e9 <__libc_csu_init+0x59>
 80485c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80485c8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80485cc:	89 2c 24             	mov    %ebp,(%esp)
 80485cf:	89 44 24 08          	mov    %eax,0x8(%esp)
 80485d3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80485d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485db:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80485e2:	83 c7 01             	add    $0x1,%edi
 80485e5:	39 f7                	cmp    %esi,%edi
 80485e7:	75 df                	jne    80485c8 <__libc_csu_init+0x38>
 80485e9:	83 c4 1c             	add    $0x1c,%esp
 80485ec:	5b                   	pop    %ebx
 80485ed:	5e                   	pop    %esi
 80485ee:	5f                   	pop    %edi
 80485ef:	5d                   	pop    %ebp
 80485f0:	c3                   	ret    
 80485f1:	eb 0d                	jmp    8048600 <__libc_csu_fini>
 80485f3:	90                   	nop
 80485f4:	90                   	nop
 80485f5:	90                   	nop
 80485f6:	90                   	nop
 80485f7:	90                   	nop
 80485f8:	90                   	nop
 80485f9:	90                   	nop
 80485fa:	90                   	nop
 80485fb:	90                   	nop
 80485fc:	90                   	nop
 80485fd:	90                   	nop
 80485fe:	90                   	nop
 80485ff:	90                   	nop

08048600 <__libc_csu_fini>:
 8048600:	f3 c3                	repz ret 

Disassembly of section .fini:

08048604 <_fini>:
 8048604:	53                   	push   %ebx
 8048605:	83 ec 08             	sub    $0x8,%esp
 8048608:	e8 e3 fd ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 804860d:	81 c3 f3 19 00 00    	add    $0x19f3,%ebx
 8048613:	83 c4 08             	add    $0x8,%esp
 8048616:	5b                   	pop    %ebx
 8048617:	c3                   	ret    
