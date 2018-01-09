
two-args:     file format elf32-i386


Disassembly of section .init:

08048328 <_init>:
 8048328:	53                   	push   %ebx
 8048329:	83 ec 08             	sub    $0x8,%esp
 804832c:	e8 bf 00 00 00       	call   80483f0 <__x86.get_pc_thunk.bx>
 8048331:	81 c3 cf 1c 00 00    	add    $0x1ccf,%ebx
 8048337:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804833d:	85 c0                	test   %eax,%eax
 804833f:	74 05                	je     8048346 <_init+0x1e>
 8048341:	e8 6a 00 00 00       	call   80483b0 <fopen@plt+0x10>
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

08048370 <fgets@plt>:
 8048370:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048376:	68 08 00 00 00       	push   $0x8
 804837b:	e9 d0 ff ff ff       	jmp    8048350 <_init+0x28>

08048380 <fclose@plt>:
 8048380:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048386:	68 10 00 00 00       	push   $0x10
 804838b:	e9 c0 ff ff ff       	jmp    8048350 <_init+0x28>

08048390 <__libc_start_main@plt>:
 8048390:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048396:	68 18 00 00 00       	push   $0x18
 804839b:	e9 b0 ff ff ff       	jmp    8048350 <_init+0x28>

080483a0 <fopen@plt>:
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
 80483cb:	68 20 86 04 08       	push   $0x8048620
 80483d0:	68 b0 85 04 08       	push   $0x80485b0
 80483d5:	51                   	push   %ecx
 80483d6:	56                   	push   %esi
 80483d7:	68 f0 84 04 08       	push   $0x80484f0
 80483dc:	e8 af ff ff ff       	call   8048390 <__libc_start_main@plt>
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
 80484c4:	8a 45 0c             	mov    0xc(%ebp),%al
 80484c7:	8a 4d 08             	mov    0x8(%ebp),%cl
 80484ca:	88 4d ff             	mov    %cl,-0x1(%ebp)
 80484cd:	88 45 fe             	mov    %al,-0x2(%ebp)
 80484d0:	0f be 55 ff          	movsbl -0x1(%ebp),%edx
 80484d4:	81 fa 61 00 00 00    	cmp    $0x61,%edx
 80484da:	0f 94 c0             	sete   %al
 80484dd:	24 01                	and    $0x1,%al
 80484df:	0f b6 c0             	movzbl %al,%eax
 80484e2:	83 c4 04             	add    $0x4,%esp
 80484e5:	5d                   	pop    %ebp
 80484e6:	c3                   	ret    
 80484e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%eax,%eax,1)
 80484ee:	00 00 

080484f0 <main>:
 80484f0:	55                   	push   %ebp
 80484f1:	89 e5                	mov    %esp,%ebp
 80484f3:	53                   	push   %ebx
 80484f4:	83 ec 44             	sub    $0x44,%esp
 80484f7:	8d 05 4d 86 04 08    	lea    0x804864d,%eax
 80484fd:	8d 0d 40 86 04 08    	lea    0x8048640,%ecx
 8048503:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804850a:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 804850d:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 8048510:	89 0c 24             	mov    %ecx,(%esp)
 8048513:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048517:	e8 84 fe ff ff       	call   80483a0 <fopen@plt>
 804851c:	b9 02 00 00 00       	mov    $0x2,%ecx
 8048521:	8d 55 dc             	lea    -0x24(%ebp),%edx
 8048524:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048527:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804852a:	89 14 24             	mov    %edx,(%esp)
 804852d:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 8048534:	00 
 8048535:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048539:	89 4d d8             	mov    %ecx,-0x28(%ebp)
 804853c:	e8 2f fe ff ff       	call   8048370 <fgets@plt>
 8048541:	8a 5d dc             	mov    -0x24(%ebp),%bl
 8048544:	0f be cb             	movsbl %bl,%ecx
 8048547:	89 0c 24             	mov    %ecx,(%esp)
 804854a:	0f be 4d dd          	movsbl -0x23(%ebp),%ecx
 804854e:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048552:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048555:	e8 66 ff ff ff       	call   80484c0 <auth>
 804855a:	3d 00 00 00 00       	cmp    $0x0,%eax
 804855f:	0f 84 16 00 00 00    	je     804857b <main+0x8b>
 8048565:	8d 05 4f 86 04 08    	lea    0x804864f,%eax
 804856b:	89 04 24             	mov    %eax,(%esp)
 804856e:	e8 ed fd ff ff       	call   8048360 <printf@plt>
 8048573:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8048576:	e9 11 00 00 00       	jmp    804858c <main+0x9c>
 804857b:	8d 05 54 86 04 08    	lea    0x8048654,%eax
 8048581:	89 04 24             	mov    %eax,(%esp)
 8048584:	e8 d7 fd ff ff       	call   8048360 <printf@plt>
 8048589:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804858c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804858f:	89 04 24             	mov    %eax,(%esp)
 8048592:	e8 e9 fd ff ff       	call   8048380 <fclose@plt>
 8048597:	b9 00 00 00 00       	mov    $0x0,%ecx
 804859c:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804859f:	89 c8                	mov    %ecx,%eax
 80485a1:	83 c4 44             	add    $0x44,%esp
 80485a4:	5b                   	pop    %ebx
 80485a5:	5d                   	pop    %ebp
 80485a6:	c3                   	ret    
 80485a7:	66 90                	xchg   %ax,%ax
 80485a9:	66 90                	xchg   %ax,%ax
 80485ab:	66 90                	xchg   %ax,%ax
 80485ad:	66 90                	xchg   %ax,%ax
 80485af:	90                   	nop

080485b0 <__libc_csu_init>:
 80485b0:	55                   	push   %ebp
 80485b1:	57                   	push   %edi
 80485b2:	31 ff                	xor    %edi,%edi
 80485b4:	56                   	push   %esi
 80485b5:	53                   	push   %ebx
 80485b6:	e8 35 fe ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 80485bb:	81 c3 45 1a 00 00    	add    $0x1a45,%ebx
 80485c1:	83 ec 1c             	sub    $0x1c,%esp
 80485c4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80485c8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485ce:	e8 55 fd ff ff       	call   8048328 <_init>
 80485d3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485d9:	29 c6                	sub    %eax,%esi
 80485db:	c1 fe 02             	sar    $0x2,%esi
 80485de:	85 f6                	test   %esi,%esi
 80485e0:	74 27                	je     8048609 <__libc_csu_init+0x59>
 80485e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80485e8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80485ec:	89 2c 24             	mov    %ebp,(%esp)
 80485ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 80485f3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80485f7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485fb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048602:	83 c7 01             	add    $0x1,%edi
 8048605:	39 f7                	cmp    %esi,%edi
 8048607:	75 df                	jne    80485e8 <__libc_csu_init+0x38>
 8048609:	83 c4 1c             	add    $0x1c,%esp
 804860c:	5b                   	pop    %ebx
 804860d:	5e                   	pop    %esi
 804860e:	5f                   	pop    %edi
 804860f:	5d                   	pop    %ebp
 8048610:	c3                   	ret    
 8048611:	eb 0d                	jmp    8048620 <__libc_csu_fini>
 8048613:	90                   	nop
 8048614:	90                   	nop
 8048615:	90                   	nop
 8048616:	90                   	nop
 8048617:	90                   	nop
 8048618:	90                   	nop
 8048619:	90                   	nop
 804861a:	90                   	nop
 804861b:	90                   	nop
 804861c:	90                   	nop
 804861d:	90                   	nop
 804861e:	90                   	nop
 804861f:	90                   	nop

08048620 <__libc_csu_fini>:
 8048620:	f3 c3                	repz ret 

Disassembly of section .fini:

08048624 <_fini>:
 8048624:	53                   	push   %ebx
 8048625:	83 ec 08             	sub    $0x8,%esp
 8048628:	e8 c3 fd ff ff       	call   80483f0 <__x86.get_pc_thunk.bx>
 804862d:	81 c3 d3 19 00 00    	add    $0x19d3,%ebx
 8048633:	83 c4 08             	add    $0x8,%esp
 8048636:	5b                   	pop    %ebx
 8048637:	c3                   	ret    
