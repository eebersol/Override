main : 

   0x0000555555554aa8 <+0>:	push   rbp
   0x0000555555554aa9 <+1>:	mov    rbp,rsp
   0x0000555555554aac <+4>:	lea    rdi,[rip+0x15d]        # 0x555555554c10
   0x0000555555554ab3 <+11>:	call   0x555555554730 <puts@plt>
   0x0000555555554ab8 <+16>:	call   0x5555555548c0 <handle_msg>
   0x0000555555554abd <+21>:	mov    eax,0x0
   0x0000555555554ac2 <+26>:	pop    rbp
   0x0000555555554ac3 <+27>:	ret



handle_msg :

   0x00005555555548c0 <+0>:	push   rbp
   0x00005555555548c1 <+1>:	mov    rbp,rsp
   0x00005555555548c4 <+4>:	sub    rsp,0xc0
   0x00005555555548cb <+11>:	lea    rax,[rbp-0xc0]
   0x00005555555548d2 <+18>:	add    rax,0x8c
   0x00005555555548d8 <+24>:	mov    QWORD PTR [rax],0x0
   0x00005555555548df <+31>:	mov    QWORD PTR [rax+0x8],0x0
   0x00005555555548e7 <+39>:	mov    QWORD PTR [rax+0x10],0x0
   0x00005555555548ef <+47>:	mov    QWORD PTR [rax+0x18],0x0
   0x00005555555548f7 <+55>:	mov    QWORD PTR [rax+0x20],0x0
   0x00005555555548ff <+63>:	mov    DWORD PTR [rbp-0xc],0x8c
   0x0000555555554906 <+70>:	lea    rax,[rbp-0xc0]
   0x000055555555490d <+77>:	mov    rdi,rax
   0x0000555555554910 <+80>:	call   0x5555555549cd <set_username>
   0x0000555555554915 <+85>:	lea    rax,[rbp-0xc0]
   0x000055555555491c <+92>:	mov    rdi,rax
   0x000055555555491f <+95>:	call   0x555555554932 <set_msg>
   0x0000555555554924 <+100>:	lea    rdi,[rip+0x295]        # 0x555555554bc0
   0x000055555555492b <+107>:	call   0x555555554730 <puts@plt>
   0x0000555555554930 <+112>:	leave
=> 0x0000555555554931 <+113>:	ret



set_username :

   0x00005555555549cd <+0>:	push   rbp
   0x00005555555549ce <+1>:	mov    rbp,rsp
   0x00005555555549d1 <+4>:	sub    rsp,0xa0
   0x00005555555549d8 <+11>:	mov    QWORD PTR [rbp-0x98],rdi
   0x00005555555549df <+18>:	lea    rax,[rbp-0x90]
   0x00005555555549e6 <+25>:	mov    rsi,rax
   0x00005555555549e9 <+28>:	mov    eax,0x0
   0x00005555555549ee <+33>:	mov    edx,0x10
   0x00005555555549f3 <+38>:	mov    rdi,rsi
   0x00005555555549f6 <+41>:	mov    rcx,rdx
   0x00005555555549f9 <+44>:	rep stos QWORD PTR es:[rdi],rax
   0x00005555555549fc <+47>:	lea    rdi,[rip+0x1e1]        # 0x555555554be4
   0x0000555555554a03 <+54>:	call   0x555555554730 <puts@plt>
   0x0000555555554a08 <+59>:	lea    rax,[rip+0x1d0]        # 0x555555554bdf
   0x0000555555554a0f <+66>:	mov    rdi,rax
   0x0000555555554a12 <+69>:	mov    eax,0x0
   0x0000555555554a17 <+74>:	call   0x555555554750 <printf@plt>
   0x0000555555554a1c <+79>:	mov    rax,QWORD PTR [rip+0x201595]        # 0x555555755fb8
   0x0000555555554a23 <+86>:	mov    rax,QWORD PTR [rax]
   0x0000555555554a26 <+89>:	mov    rdx,rax
   0x0000555555554a29 <+92>:	lea    rax,[rbp-0x90]
   0x0000555555554a30 <+99>:	mov    esi,0x80
   0x0000555555554a35 <+104>:	mov    rdi,rax
   0x0000555555554a38 <+107>:	call   0x555555554770 <fgets@plt>
   0x0000555555554a3d <+112>:	mov    DWORD PTR [rbp-0x4],0x0
   0x0000555555554a44 <+119>:	jmp    0x555555554a6a <set_username+157>
   0x0000555555554a46 <+121>:	mov    eax,DWORD PTR [rbp-0x4]
   0x0000555555554a49 <+124>:	cdqe
   0x0000555555554a4b <+126>:	movzx  ecx,BYTE PTR [rbp+rax*1-0x90]
   0x0000555555554a53 <+134>:	mov    rdx,QWORD PTR [rbp-0x98]
   0x0000555555554a5a <+141>:	mov    eax,DWORD PTR [rbp-0x4]
   0x0000555555554a5d <+144>:	cdqe
   0x0000555555554a5f <+146>:	mov    BYTE PTR [rdx+rax*1+0x8c],cl
   0x0000555555554a66 <+153>:	add    DWORD PTR [rbp-0x4],0x1
   0x0000555555554a6a <+157>:	cmp    DWORD PTR [rbp-0x4],0x28
   0x0000555555554a6e <+161>:	jg     0x555555554a81 <set_username+180>
   0x0000555555554a70 <+163>:	mov    eax,DWORD PTR [rbp-0x4]
   0x0000555555554a73 <+166>:	cdqe
   0x0000555555554a75 <+168>:	movzx  eax,BYTE PTR [rbp+rax*1-0x90]
   0x0000555555554a7d <+176>:	test   al,al
   0x0000555555554a7f <+178>:	jne    0x555555554a46 <set_username+121>
   0x0000555555554a81 <+180>:	mov    rax,QWORD PTR [rbp-0x98]
   0x0000555555554a88 <+187>:	lea    rdx,[rax+0x8c]
   0x0000555555554a8f <+194>:	lea    rax,[rip+0x165]        # 0x555555554bfb
   0x0000555555554a96 <+201>:	mov    rsi,rdx
   0x0000555555554a99 <+204>:	mov    rdi,rax
   0x0000555555554a9c <+207>:	mov    eax,0x0
   0x0000555555554aa1 <+212>:	call   0x555555554750 <printf@plt>
   0x0000555555554aa6 <+217>:	leave
   0x0000555555554aa7 <+218>:	ret


 set_msg :

    0x0000555555554932 <+0>:	push   rbp
   0x0000555555554933 <+1>:	mov    rbp,rsp
   0x0000555555554936 <+4>:	sub    rsp,0x410
   0x000055555555493d <+11>:	mov    QWORD PTR [rbp-0x408],rdi
   0x0000555555554944 <+18>:	lea    rax,[rbp-0x400]
   0x000055555555494b <+25>:	mov    rsi,rax
   0x000055555555494e <+28>:	mov    eax,0x0
   0x0000555555554953 <+33>:	mov    edx,0x80
   0x0000555555554958 <+38>:	mov    rdi,rsi
   0x000055555555495b <+41>:	mov    rcx,rdx
   0x000055555555495e <+44>:	rep stos QWORD PTR es:[rdi],rax
   0x0000555555554961 <+47>:	lea    rdi,[rip+0x265]        # 0x555555554bcd
   0x0000555555554968 <+54>:	call   0x555555554730 <puts@plt>
   0x000055555555496d <+59>:	lea    rax,[rip+0x26b]        # 0x555555554bdf
   0x0000555555554974 <+66>:	mov    rdi,rax
   0x0000555555554977 <+69>:	mov    eax,0x0
   0x000055555555497c <+74>:	call   0x555555554750 <printf@plt>
   0x0000555555554981 <+79>:	mov    rax,QWORD PTR [rip+0x201630]        # 0x555555755fb8
   0x0000555555554988 <+86>:	mov    rax,QWORD PTR [rax]
   0x000055555555498b <+89>:	mov    rdx,rax
   0x000055555555498e <+92>:	lea    rax,[rbp-0x400]
   0x0000555555554995 <+99>:	mov    esi,0x400
   0x000055555555499a <+104>:	mov    rdi,rax
   0x000055555555499d <+107>:	call   0x555555554770 <fgets@plt>
   0x00005555555549a2 <+112>:	mov    rax,QWORD PTR [rbp-0x408]
   0x00005555555549a9 <+119>:	mov    eax,DWORD PTR [rax+0xb4]
   0x00005555555549af <+125>:	movsxd rdx,eax
   0x00005555555549b2 <+128>:	lea    rcx,[rbp-0x400]
   0x00005555555549b9 <+135>:	mov    rax,QWORD PTR [rbp-0x408]
   0x00005555555549c0 <+142>:	mov    rsi,rcx
   0x00005555555549c3 <+145>:	mov    rdi,rax
   0x00005555555549c6 <+148>:	call   0x555555554720 <strncpy@plt>
   0x00005555555549cb <+153>:	leave
   0x00005555555549cc <+154>:	ret

