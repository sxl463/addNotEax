
diffLeakAmount:     file format elf32-i386


Disassembly of section .init:

08048348 <_init>:
 8048348:	53                   	push   %ebx
 8048349:	83 ec 08             	sub    $0x8,%esp
 804834c:	e8 cf 00 00 00       	call   8048420 <__x86.get_pc_thunk.bx>
 8048351:	81 c3 af 1c 00 00    	add    $0x1caf,%ebx
 8048357:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804835d:	85 c0                	test   %eax,%eax
 804835f:	74 05                	je     8048366 <_init+0x1e>
 8048361:	e8 7a 00 00 00       	call   80483e0 <fgetc@plt+0x10>
 8048366:	83 c4 08             	add    $0x8,%esp
 8048369:	5b                   	pop    %ebx
 804836a:	c3                   	ret    

Disassembly of section .plt:

08048370 <printf@plt-0x10>:
 8048370:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048376:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804837c:	00 00                	add    %al,(%eax)
	...

08048380 <printf@plt>:
 8048380:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048386:	68 00 00 00 00       	push   $0x0
 804838b:	e9 e0 ff ff ff       	jmp    8048370 <_init+0x28>

08048390 <fgets@plt>:
 8048390:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048396:	68 08 00 00 00       	push   $0x8
 804839b:	e9 d0 ff ff ff       	jmp    8048370 <_init+0x28>

080483a0 <fclose@plt>:
 80483a0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483a6:	68 10 00 00 00       	push   $0x10
 80483ab:	e9 c0 ff ff ff       	jmp    8048370 <_init+0x28>

080483b0 <__libc_start_main@plt>:
 80483b0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483b6:	68 18 00 00 00       	push   $0x18
 80483bb:	e9 b0 ff ff ff       	jmp    8048370 <_init+0x28>

080483c0 <fopen@plt>:
 80483c0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483c6:	68 20 00 00 00       	push   $0x20
 80483cb:	e9 a0 ff ff ff       	jmp    8048370 <_init+0x28>

080483d0 <fgetc@plt>:
 80483d0:	ff 25 20 a0 04 08    	jmp    *0x804a020
 80483d6:	68 28 00 00 00       	push   $0x28
 80483db:	e9 90 ff ff ff       	jmp    8048370 <_init+0x28>

Disassembly of section .plt.got:

080483e0 <.plt.got>:
 80483e0:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080483f0 <_start>:
 80483f0:	31 ed                	xor    %ebp,%ebp
 80483f2:	5e                   	pop    %esi
 80483f3:	89 e1                	mov    %esp,%ecx
 80483f5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483f8:	50                   	push   %eax
 80483f9:	54                   	push   %esp
 80483fa:	52                   	push   %edx
 80483fb:	68 f0 86 04 08       	push   $0x80486f0
 8048400:	68 80 86 04 08       	push   $0x8048680
 8048405:	51                   	push   %ecx
 8048406:	56                   	push   %esi
 8048407:	68 60 85 04 08       	push   $0x8048560
 804840c:	e8 9f ff ff ff       	call   80483b0 <__libc_start_main@plt>
 8048411:	f4                   	hlt    
 8048412:	66 90                	xchg   %ax,%ax
 8048414:	66 90                	xchg   %ax,%ax
 8048416:	66 90                	xchg   %ax,%ax
 8048418:	66 90                	xchg   %ax,%ax
 804841a:	66 90                	xchg   %ax,%ax
 804841c:	66 90                	xchg   %ax,%ax
 804841e:	66 90                	xchg   %ax,%ax

08048420 <__x86.get_pc_thunk.bx>:
 8048420:	8b 1c 24             	mov    (%esp),%ebx
 8048423:	c3                   	ret    
 8048424:	66 90                	xchg   %ax,%ax
 8048426:	66 90                	xchg   %ax,%ax
 8048428:	66 90                	xchg   %ax,%ax
 804842a:	66 90                	xchg   %ax,%ax
 804842c:	66 90                	xchg   %ax,%ax
 804842e:	66 90                	xchg   %ax,%ax

08048430 <deregister_tm_clones>:
 8048430:	b8 2f a0 04 08       	mov    $0x804a02f,%eax
 8048435:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804843a:	83 f8 06             	cmp    $0x6,%eax
 804843d:	77 01                	ja     8048440 <deregister_tm_clones+0x10>
 804843f:	c3                   	ret    
 8048440:	b8 00 00 00 00       	mov    $0x0,%eax
 8048445:	85 c0                	test   %eax,%eax
 8048447:	74 f6                	je     804843f <deregister_tm_clones+0xf>
 8048449:	55                   	push   %ebp
 804844a:	89 e5                	mov    %esp,%ebp
 804844c:	83 ec 18             	sub    $0x18,%esp
 804844f:	c7 04 24 2c a0 04 08 	movl   $0x804a02c,(%esp)
 8048456:	ff d0                	call   *%eax
 8048458:	c9                   	leave  
 8048459:	c3                   	ret    
 804845a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048460 <register_tm_clones>:
 8048460:	b8 2c a0 04 08       	mov    $0x804a02c,%eax
 8048465:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804846a:	c1 f8 02             	sar    $0x2,%eax
 804846d:	89 c2                	mov    %eax,%edx
 804846f:	c1 ea 1f             	shr    $0x1f,%edx
 8048472:	01 d0                	add    %edx,%eax
 8048474:	d1 f8                	sar    %eax
 8048476:	75 01                	jne    8048479 <register_tm_clones+0x19>
 8048478:	c3                   	ret    
 8048479:	ba 00 00 00 00       	mov    $0x0,%edx
 804847e:	85 d2                	test   %edx,%edx
 8048480:	74 f6                	je     8048478 <register_tm_clones+0x18>
 8048482:	55                   	push   %ebp
 8048483:	89 e5                	mov    %esp,%ebp
 8048485:	83 ec 18             	sub    $0x18,%esp
 8048488:	89 44 24 04          	mov    %eax,0x4(%esp)
 804848c:	c7 04 24 2c a0 04 08 	movl   $0x804a02c,(%esp)
 8048493:	ff d2                	call   *%edx
 8048495:	c9                   	leave  
 8048496:	c3                   	ret    
 8048497:	89 f6                	mov    %esi,%esi
 8048499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484a0 <__do_global_dtors_aux>:
 80484a0:	80 3d 2c a0 04 08 00 	cmpb   $0x0,0x804a02c
 80484a7:	75 13                	jne    80484bc <__do_global_dtors_aux+0x1c>
 80484a9:	55                   	push   %ebp
 80484aa:	89 e5                	mov    %esp,%ebp
 80484ac:	83 ec 08             	sub    $0x8,%esp
 80484af:	e8 7c ff ff ff       	call   8048430 <deregister_tm_clones>
 80484b4:	c6 05 2c a0 04 08 01 	movb   $0x1,0x804a02c
 80484bb:	c9                   	leave  
 80484bc:	f3 c3                	repz ret 
 80484be:	66 90                	xchg   %ax,%ax

080484c0 <frame_dummy>:
 80484c0:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 80484c5:	85 c0                	test   %eax,%eax
 80484c7:	74 1f                	je     80484e8 <frame_dummy+0x28>
 80484c9:	b8 00 00 00 00       	mov    $0x0,%eax
 80484ce:	85 c0                	test   %eax,%eax
 80484d0:	74 16                	je     80484e8 <frame_dummy+0x28>
 80484d2:	55                   	push   %ebp
 80484d3:	89 e5                	mov    %esp,%ebp
 80484d5:	83 ec 18             	sub    $0x18,%esp
 80484d8:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 80484df:	ff d0                	call   *%eax
 80484e1:	c9                   	leave  
 80484e2:	e9 79 ff ff ff       	jmp    8048460 <register_tm_clones>
 80484e7:	90                   	nop
 80484e8:	e9 73 ff ff ff       	jmp    8048460 <register_tm_clones>
 80484ed:	66 90                	xchg   %ax,%ax
 80484ef:	90                   	nop

080484f0 <auth>:
 80484f0:	55                   	push   %ebp
 80484f1:	89 e5                	mov    %esp,%ebp
 80484f3:	83 ec 08             	sub    $0x8,%esp
 80484f6:	8a 45 08             	mov    0x8(%ebp),%al
 80484f9:	88 45 fb             	mov    %al,-0x5(%ebp)
 80484fc:	0f be 4d fb          	movsbl -0x5(%ebp),%ecx
 8048500:	81 f9 64 00 00 00    	cmp    $0x64,%ecx
 8048506:	0f 85 0c 00 00 00    	jne    8048518 <auth+0x28>
 804850c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048513:	e9 07 00 00 00       	jmp    804851f <auth+0x2f>
 8048518:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804851f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048522:	83 c4 08             	add    $0x8,%esp
 8048525:	5d                   	pop    %ebp
 8048526:	c3                   	ret    
 8048527:	66 0f 1f 84 00 00 00 	nopw   0x0(%eax,%eax,1)
 804852e:	00 00 

08048530 <auth2>:
 8048530:	55                   	push   %ebp
 8048531:	89 e5                	mov    %esp,%ebp
 8048533:	83 ec 08             	sub    $0x8,%esp
 8048536:	8b 45 08             	mov    0x8(%ebp),%eax
 8048539:	8d 4d fa             	lea    -0x6(%ebp),%ecx
 804853c:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804853f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048542:	8a 10                	mov    (%eax),%dl
 8048544:	88 55 fa             	mov    %dl,-0x6(%ebp)
 8048547:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804854a:	8a 50 01             	mov    0x1(%eax),%dl
 804854d:	88 55 fb             	mov    %dl,-0x5(%ebp)
 8048550:	89 c8                	mov    %ecx,%eax
 8048552:	83 c4 08             	add    $0x8,%esp
 8048555:	5d                   	pop    %ebp
 8048556:	c3                   	ret    
 8048557:	66 0f 1f 84 00 00 00 	nopw   0x0(%eax,%eax,1)
 804855e:	00 00 

08048560 <main>:
 8048560:	55                   	push   %ebp
 8048561:	89 e5                	mov    %esp,%ebp
 8048563:	81 ec a8 00 00 00    	sub    $0xa8,%esp
 8048569:	8d 05 1d 87 04 08    	lea    0x804871d,%eax
 804856f:	8d 0d 10 87 04 08    	lea    0x8048710,%ecx
 8048575:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804857c:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 804857f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 8048582:	89 0c 24             	mov    %ecx,(%esp)
 8048585:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048589:	e8 32 fe ff ff       	call   80483c0 <fopen@plt>
 804858e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048591:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048594:	89 04 24             	mov    %eax,(%esp)
 8048597:	e8 34 fe ff ff       	call   80483d0 <fgetc@plt>
 804859c:	88 c2                	mov    %al,%dl
 804859e:	88 55 f3             	mov    %dl,-0xd(%ebp)
 80485a1:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
 80485a5:	89 04 24             	mov    %eax,(%esp)
 80485a8:	e8 43 ff ff ff       	call   80484f0 <auth>
 80485ad:	3d 00 00 00 00       	cmp    $0x0,%eax
 80485b2:	0f 84 16 00 00 00    	je     80485ce <main+0x6e>
 80485b8:	8d 05 1f 87 04 08    	lea    0x804871f,%eax
 80485be:	89 04 24             	mov    %eax,(%esp)
 80485c1:	e8 ba fd ff ff       	call   8048380 <printf@plt>
 80485c6:	89 45 84             	mov    %eax,-0x7c(%ebp)
 80485c9:	e9 11 00 00 00       	jmp    80485df <main+0x7f>
 80485ce:	8d 05 2b 87 04 08    	lea    0x804872b,%eax
 80485d4:	89 04 24             	mov    %eax,(%esp)
 80485d7:	e8 a4 fd ff ff       	call   8048380 <printf@plt>
 80485dc:	89 45 80             	mov    %eax,-0x80(%ebp)
 80485df:	b8 05 00 00 00       	mov    $0x5,%eax
 80485e4:	8d 4d 8f             	lea    -0x71(%ebp),%ecx
 80485e7:	8b 55 f8             	mov    -0x8(%ebp),%edx
 80485ea:	89 0c 24             	mov    %ecx,(%esp)
 80485ed:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 80485f4:	00 
 80485f5:	89 54 24 08          	mov    %edx,0x8(%esp)
 80485f9:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 80485ff:	e8 8c fd ff ff       	call   8048390 <fgets@plt>
 8048604:	8d 4d 8f             	lea    -0x71(%ebp),%ecx
 8048607:	89 0c 24             	mov    %ecx,(%esp)
 804860a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
 8048610:	e8 1b ff ff ff       	call   8048530 <auth2>
 8048615:	89 45 88             	mov    %eax,-0x78(%ebp)
 8048618:	81 7d 88 00 00 00 00 	cmpl   $0x0,-0x78(%ebp)
 804861f:	0f 84 20 00 00 00    	je     8048645 <main+0xe5>
 8048625:	8d 05 36 87 04 08    	lea    0x8048736,%eax
 804862b:	8b 4d 88             	mov    -0x78(%ebp),%ecx
 804862e:	89 04 24             	mov    %eax,(%esp)
 8048631:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048635:	e8 46 fd ff ff       	call   8048380 <printf@plt>
 804863a:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
 8048640:	e9 14 00 00 00       	jmp    8048659 <main+0xf9>
 8048645:	8d 05 41 87 04 08    	lea    0x8048741,%eax
 804864b:	89 04 24             	mov    %eax,(%esp)
 804864e:	e8 2d fd ff ff       	call   8048380 <printf@plt>
 8048653:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 8048659:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804865c:	89 04 24             	mov    %eax,(%esp)
 804865f:	e8 3c fd ff ff       	call   80483a0 <fclose@plt>
 8048664:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048669:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
 804866f:	89 c8                	mov    %ecx,%eax
 8048671:	81 c4 a8 00 00 00    	add    $0xa8,%esp
 8048677:	5d                   	pop    %ebp
 8048678:	c3                   	ret    
 8048679:	66 90                	xchg   %ax,%ax
 804867b:	66 90                	xchg   %ax,%ax
 804867d:	66 90                	xchg   %ax,%ax
 804867f:	90                   	nop

08048680 <__libc_csu_init>:
 8048680:	55                   	push   %ebp
 8048681:	57                   	push   %edi
 8048682:	31 ff                	xor    %edi,%edi
 8048684:	56                   	push   %esi
 8048685:	53                   	push   %ebx
 8048686:	e8 95 fd ff ff       	call   8048420 <__x86.get_pc_thunk.bx>
 804868b:	81 c3 75 19 00 00    	add    $0x1975,%ebx
 8048691:	83 ec 1c             	sub    $0x1c,%esp
 8048694:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048698:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804869e:	e8 a5 fc ff ff       	call   8048348 <_init>
 80486a3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80486a9:	29 c6                	sub    %eax,%esi
 80486ab:	c1 fe 02             	sar    $0x2,%esi
 80486ae:	85 f6                	test   %esi,%esi
 80486b0:	74 27                	je     80486d9 <__libc_csu_init+0x59>
 80486b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486b8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80486bc:	89 2c 24             	mov    %ebp,(%esp)
 80486bf:	89 44 24 08          	mov    %eax,0x8(%esp)
 80486c3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80486c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486cb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486d2:	83 c7 01             	add    $0x1,%edi
 80486d5:	39 f7                	cmp    %esi,%edi
 80486d7:	75 df                	jne    80486b8 <__libc_csu_init+0x38>
 80486d9:	83 c4 1c             	add    $0x1c,%esp
 80486dc:	5b                   	pop    %ebx
 80486dd:	5e                   	pop    %esi
 80486de:	5f                   	pop    %edi
 80486df:	5d                   	pop    %ebp
 80486e0:	c3                   	ret    
 80486e1:	eb 0d                	jmp    80486f0 <__libc_csu_fini>
 80486e3:	90                   	nop
 80486e4:	90                   	nop
 80486e5:	90                   	nop
 80486e6:	90                   	nop
 80486e7:	90                   	nop
 80486e8:	90                   	nop
 80486e9:	90                   	nop
 80486ea:	90                   	nop
 80486eb:	90                   	nop
 80486ec:	90                   	nop
 80486ed:	90                   	nop
 80486ee:	90                   	nop
 80486ef:	90                   	nop

080486f0 <__libc_csu_fini>:
 80486f0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486f4 <_fini>:
 80486f4:	53                   	push   %ebx
 80486f5:	83 ec 08             	sub    $0x8,%esp
 80486f8:	e8 23 fd ff ff       	call   8048420 <__x86.get_pc_thunk.bx>
 80486fd:	81 c3 03 19 00 00    	add    $0x1903,%ebx
 8048703:	83 c4 08             	add    $0x8,%esp
 8048706:	5b                   	pop    %ebx
 8048707:	c3                   	ret    
