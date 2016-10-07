== Info: STATE: INIT => CONNECT handle 0x600061f70; line 1108 (connection #-5000) 
== Info: Added connection 0. The cache now contains 1 members
== Info:   Trying 52.72.100.59...
== Info: STATE: CONNECT => WAITCONNECT handle 0x600061f70; line 1161 (connection #0) 
== Info: Connected to testapi.dive-in.co (52.72.100.59) port 443 (#0)
== Info: STATE: WAITCONNECT => SENDPROTOCONNECT handle 0x600061f70; line 1260 (connection #0) 
== Info: ALPN, offering h2
== Info: ALPN, offering http/1.1
== Info: Cipher selection: ALL:!EXPORT:!EXPORT40:!EXPORT56:!aNULL:!LOW:!RC4:@STRENGTH
== Info: successfully set certificate verify locations:
== Info:   CAfile: /etc/pki/tls/certs/ca-bundle.crt
  CApath: none
== Info: TLSv1.2 (OUT), TLS header, Certificate Status (22):
=> Send SSL data, 5 bytes (0x5)
0000: 16 03 01 02 00                                  .....
== Info: TLSv1.2 (OUT), TLS handshake, Client hello (1):
=> Send SSL data, 512 bytes (0x200)
0000: 01 00 01 fc 03 03 fe 99 a7 06 d9 a3 49 02 e3 1d ............I...
0010: bb 4a 31 0a ca 7b 7b 62 fe d2 4c a5 ee 28 7e 3c .J1..{{b..L..(~<
0020: a0 e0 65 d7 40 0b 00 00 a0 c0 30 c0 2c c0 28 c0 ..e.@.....0.,.(.
0030: 24 c0 14 c0 0a 00 a5 00 a3 00 a1 00 9f 00 6b 00 $.............k.
0040: 6a 00 69 00 68 00 39 00 38 00 37 00 36 00 88 00 j.i.h.9.8.7.6...
0050: 87 00 86 00 85 c0 32 c0 2e c0 2a c0 26 c0 0f c0 ......2...*.&...
0060: 05 00 9d 00 3d 00 35 00 84 c0 2f c0 2b c0 27 c0 ....=.5.../.+.'.
0070: 23 c0 13 c0 09 00 a4 00 a2 00 a0 00 9e 00 67 00 #.............g.
0080: 40 00 3f 00 3e 00 33 00 32 00 31 00 30 00 9a 00 @.?.>.3.2.1.0...
0090: 99 00 98 00 97 00 45 00 44 00 43 00 42 c0 31 c0 ......E.D.C.B.1.
00a0: 2d c0 29 c0 25 c0 0e c0 04 00 9c 00 3c 00 2f 00 -.).%.......<./.
00b0: 96 00 41 00 07 c0 12 c0 08 00 16 00 13 00 10 00 ..A.............
00c0: 0d c0 0d c0 03 00 0a 00 ff 01 00 01 33 00 00 00 ............3...
00d0: 17 00 15 00 00 12 74 65 73 74 61 70 69 2e 64 69 ......testapi.di
00e0: 76 65 2d 69 6e 2e 63 6f 00 0b 00 04 03 00 01 02 ve-in.co........
00f0: 00 0a 00 1c 00 1a 00 17 00 19 00 1c 00 1b 00 18 ................
0100: 00 1a 00 16 00 0e 00 0d 00 0b 00 0c 00 09 00 0a ................
0110: 00 0d 00 20 00 1e 06 01 06 02 06 03 05 01 05 02 ... ............
0120: 05 03 04 01 04 02 04 03 03 01 03 02 03 03 02 01 ................
0130: 02 02 02 03 00 0f 00 01 01 33 74 00 00 00 10 00 .........3t.....
0140: 0e 00 0c 02 68 32 08 68 74 74 70 2f 31 2e 31 00 ....h2.http/1.1.
0150: 15 00 ad 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
0160: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
0170: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
0180: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
0190: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01a0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01d0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
01f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
== Info: STATE: SENDPROTOCONNECT => PROTOCONNECT handle 0x600061f70; line 1274 (connection #0) 
<= Recv SSL data, 5 bytes (0x5)
0000: 16 03 03 00 6b                                  ....k
== Info: TLSv1.2 (IN), TLS handshake, Server hello (2):
<= Recv SSL data, 107 bytes (0x6b)
0000: 02 00 00 67 03 03 60 2b ea de 66 2a 96 1f 42 16 ...g..`+..f*..B.
0010: da eb 72 d1 6e a4 a5 de 8c 6d 5f 7f 33 df f9 26 ..r.n....m_3..&
0020: 8a 38 d8 7c 1d f0 20 0c 7b cf ec 53 fd 56 ef 73 .8.|.. .{..S.V.s
0030: a0 29 1e ba bd 6a 5d 47 c1 23 9f 94 c5 89 74 69 .)...j]G.#....ti
0040: 1f 01 38 be b3 00 ec c0 30 00 00 1f ff 01 00 01 ..8.....0.......
0050: 00 00 0b 00 04 03 00 01 02 00 0f 00 01 01 33 74 ..............3t
0060: 00 09 08 68 74 74 70 2f 31 2e 31                ...http/1.1
== Info: NPN, negotiated HTTP1.1
<= Recv SSL data, 5 bytes (0x5)
0000: 16 03 03 09 ca                                  .....
== Info: TLSv1.2 (IN), TLS handshake, Certificate (11):
<= Recv SSL data, 2506 bytes (0x9ca)
0000: 0b 00 09 c6 00 09 c3 00 05 6c 30 82 05 68 30 82 .........l0..h0.
0010: 04 50 a0 03 02 01 02 02 10 4d ea af 35 f5 6d 7d .P.......M..5.m}
0020: 8f df d2 91 a7 68 e2 e5 6b 30 0d 06 09 2a 86 48 .....h..k0...*.H
0030: 86 f7 0d 01 01 0b 05 00 30 42 31 0b 30 09 06 03 ........0B1.0...
0040: 55 04 06 13 02 55 53 31 16 30 14 06 03 55 04 0a U....US1.0...U..
0050: 13 0d 47 65 6f 54 72 75 73 74 20 49 6e 63 2e 31 ..GeoTrust Inc.1
0060: 1b 30 19 06 03 55 04 03 13 12 52 61 70 69 64 53 .0...U....RapidS
0070: 53 4c 20 53 48 41 32 35 36 20 43 41 30 1e 17 0d SL SHA256 CA0...
0080: 31 36 30 39 30 37 30 30 30 30 30 30 5a 17 0d 31 160907000000Z..1
0090: 37 30 39 30 37 32 33 35 39 35 39 5a 30 17 31 15 70907235959Z0.1.
00a0: 30 13 06 03 55 04 03 0c 0c 2a 2e 64 69 76 65 2d 0...U....*.dive-
00b0: 69 6e 2e 63 6f 30 82 01 22 30 0d 06 09 2a 86 48 in.co0.."0...*.H
00c0: 86 f7 0d 01 01 01 05 00 03 82 01 0f 00 30 82 01 .............0..
00d0: 0a 02 82 01 01 00 f1 f5 5e 66 5d 04 83 cc a7 c4 ........^f].....
00e0: fa 3d 43 48 92 5e 49 c8 7a 68 b9 d6 e4 e8 3b c3 .=CH.^I.zh....;.
00f0: 08 34 ef b1 4f d1 d2 b9 54 7d 04 38 e5 02 a3 8a .4..O...T}.8....
0100: 33 aa c7 7e 1f 45 7f cb 7c 8b cb 96 c6 f2 91 3c 3..~.E.|......<
0110: c6 d6 fe 28 b5 c5 17 63 eb 31 91 50 a7 03 5d 13 ...(...c.1.P..].
0120: 9b ac 80 4a fe 19 3c 26 08 92 c7 b2 9c 41 19 e6 ...J..<&.....A..
0130: a5 27 fa 8c 39 6e c8 36 80 f9 32 57 90 4b 8e a5 .'..9n.6..2W.K..
0140: b5 3f 3b 0c ae 6e c6 78 4e 85 34 70 c8 b7 79 8a .?;..n.xN.4p..y.
0150: 98 ad 62 b5 10 e7 5f e4 42 2e f8 8a 2e 6f ab 75 ..b..._.B....o.u
0160: c0 74 2c 87 6d a2 48 b6 80 1b 56 bc 3a fd 17 fc .t,.m.H...V.:...
0170: e1 42 89 d5 a0 66 d5 52 c8 73 3d d1 84 1f ab c3 .B...f.R.s=.....
0180: e5 cd a5 95 45 78 06 c9 26 0a 5c 9f 7b 98 bf 60 ....Ex..&.\.{..`
0190: 78 c7 d0 6c ab d0 23 af 03 73 83 7e bc d3 b7 cc x..l..#..s.~....
01a0: 06 60 5b 02 71 39 5e b6 ac 7e ed b1 7f e0 1d 65 .`[.q9^..~....e
01b0: fa fa f3 9a 54 ee 20 e7 52 a1 2e 70 7c 97 ac 8e ....T. .R..p|...
01c0: bc ae 28 d1 1e 65 99 e8 49 ce 5f 50 9b 7b 26 8a ..(..e..I._P.{&.
01d0: 4a e0 e8 21 b3 c7 02 03 01 00 01 a3 82 02 83 30 J..!...........0
01e0: 82 02 7f 30 23 06 03 55 1d 11 04 1c 30 1a 82 0c ..0#..U....0...
01f0: 2a 2e 64 69 76 65 2d 69 6e 2e 63 6f 82 0a 64 69 *.dive-in.co..di
0200: 76 65 2d 69 6e 2e 63 6f 30 09 06 03 55 1d 13 04 ve-in.co0...U...
0210: 02 30 00 30 2b 06 03 55 1d 1f 04 24 30 22 30 20 .0.0+..U...$0"0 
0220: a0 1e a0 1c 86 1a 68 74 74 70 3a 2f 2f 67 70 2e ......http://gp.
0230: 73 79 6d 63 62 2e 63 6f 6d 2f 67 70 2e 63 72 6c symcb.com/gp.crl
0240: 30 6f 06 03 55 1d 20 04 68 30 66 30 64 06 06 67 0o..U. .h0f0d..g
0250: 81 0c 01 02 01 30 5a 30 2a 06 08 2b 06 01 05 05 .....0Z0*..+....
0260: 07 02 01 16 1e 68 74 74 70 73 3a 2f 2f 77 77 77 .....https://www
0270: 2e 72 61 70 69 64 73 73 6c 2e 63 6f 6d 2f 6c 65 .rapidssl.com/le
0280: 67 61 6c 30 2c 06 08 2b 06 01 05 05 07 02 02 30 gal0,..+.......0
0290: 20 0c 1e 68 74 74 70 73 3a 2f 2f 77 77 77 2e 72  ..https://www.r
02a0: 61 70 69 64 73 73 6c 2e 63 6f 6d 2f 6c 65 67 61 apidssl.com/lega
02b0: 6c 30 1f 06 03 55 1d 23 04 18 30 16 80 14 97 c2 l0...U.#..0.....
02c0: 27 50 9e c2 c9 ec 0c 88 32 c8 7c ad e2 a6 01 4f 'P......2.|....O
02d0: da 6f 30 0e 06 03 55 1d 0f 01 01 ff 04 04 03 02 .o0...U.........
02e0: 05 a0 30 1d 06 03 55 1d 25 04 16 30 14 06 08 2b ..0...U.%..0...+
02f0: 06 01 05 05 07 03 01 06 08 2b 06 01 05 05 07 03 .........+......
0300: 02 30 57 06 08 2b 06 01 05 05 07 01 01 04 4b 30 .0W..+........K0
0310: 49 30 1f 06 08 2b 06 01 05 05 07 30 01 86 13 68 I0...+.....0...h
0320: 74 74 70 3a 2f 2f 67 70 2e 73 79 6d 63 64 2e 63 ttp://gp.symcd.c
0330: 6f 6d 30 26 06 08 2b 06 01 05 05 07 30 02 86 1a om0&..+.....0...
0340: 68 74 74 70 3a 2f 2f 67 70 2e 73 79 6d 63 62 2e http://gp.symcb.
0350: 63 6f 6d 2f 67 70 2e 63 72 74 30 82 01 04 06 0a com/gp.crt0.....
0360: 2b 06 01 04 01 d6 79 02 04 02 04 81 f5 04 81 f2 +.....y.........
0370: 00 f0 00 76 00 dd eb 1d 2b 7a 0d 4f a6 20 8b 81 ...v....+z.O. ..
0380: ad 81 68 70 7e 2e 8e 9d 01 d5 5c 88 8d 3d 11 c4 ..hp~.....\..=..
0390: cd b6 ec be cc 00 00 01 57 05 05 63 d8 00 00 04 ........W..c....
03a0: 03 00 47 30 45 02 20 14 d8 6e 13 99 a5 ab 9c 89 ..G0E. ..n......
03b0: 34 6e d4 c8 6a 77 55 6e d3 a7 64 e5 c0 ed 6e 35 4n..jwUn..d...n5
03c0: d0 a9 1f 25 71 1a f0 02 21 00 c5 5f ab b4 c3 4b ...%q...!.._...K
03d0: 5a e6 4b d0 e7 22 d5 65 8b 3a 75 d4 44 b0 c5 23 Z.K..".e.:u.D..#
03e0: a8 45 e8 d6 86 3e fe 4c d0 0c 00 76 00 a4 b9 09 .E...>.L...v....
03f0: 90 b4 18 58 14 87 bb 13 a2 cc 67 70 0a 3c 35 98 ...X......gp.<5.
0400: 04 f9 1b df b8 e3 77 cd 0e c8 0d dc 10 00 00 01 ......w.........
0410: 57 05 05 65 02 00 00 04 03 00 47 30 45 02 20 50 W..e......G0E. P
0420: c8 d0 bc d5 a8 b1 0c 4a 19 b5 3a 50 67 a3 7a d7 .......J..:Pg.z.
0430: d0 0c 41 a8 a8 c3 e5 21 c0 af fd 42 29 f5 b0 02 ..A....!...B)...
0440: 21 00 d8 15 f1 08 22 d2 e1 2a 20 b7 30 44 a7 ba !....."..* .0D..
0450: d9 f8 01 e9 c3 15 c2 bd 40 d0 27 fb 09 af 0f 88 ........@.'.....
0460: 32 ec 30 0d 06 09 2a 86 48 86 f7 0d 01 01 0b 05 2.0...*.H.......
0470: 00 03 82 01 01 00 20 da f8 e6 1d 8c b7 0f 5b c9 ...... .......[.
0480: 9d 48 a9 4b 31 7c 0d 7e fe 89 40 31 48 3f 1c cf .H.K1|.~..@1H?..
0490: d3 b4 e6 72 15 f8 86 8f 90 a6 e4 48 a7 6e ff 65 ...r.......H.n.e
04a0: f2 f4 53 9b 40 d1 99 68 0a fd 7e 30 e5 9a 72 48 ..S.@..h..~0..rH
04b0: b1 20 6f 8a 79 bd c9 dc e1 0d da f0 04 c5 05 89 . o.y...........
04c0: 6c a5 93 4e a6 7b dd 64 f0 db 9a bd 38 8f 57 fd l..N.{.d....8.W.
04d0: 95 8a b8 42 b8 ae 10 e9 85 00 4d 1e fd c6 76 c3 ...B......M...v.
04e0: 8e 2e b3 93 42 f9 3e 38 7f c6 8d 2d b1 b7 d2 1a ....B.>8..-....
04f0: fd 05 38 3a 07 e9 04 c7 d5 9b 5e f7 46 2f 1e 26 ..8:......^.F/.&
0500: 49 de 49 84 8c d3 3e 9e 03 9a 65 40 fc 07 56 e2 I.I...>...e@..V.
0510: 94 4c 4a 21 5a 55 20 6d 90 c5 3f 11 c4 e5 ef 2c .LJ!ZU m..?....,
0520: 24 18 7f 0a cb 2a 15 f4 e5 0a 7b 30 b7 f9 b3 03 $...*....{0....
0530: 2a a9 02 3d e5 c1 f6 d0 76 5d 1c 2d 96 76 e6 a3 *..=....v].-.v..
0540: 7b 91 41 4d f6 d7 de 1e 5f 48 22 96 9a dc 3e db {.AM...._H"...>.
0550: 7d 91 f3 e8 d4 0f 37 f6 a2 67 d1 90 12 bd 9c c0 }.....7..g......
0560: ca e4 cf 7c e7 14 1a c6 96 ab 23 96 55 42 8d b3 ...|......#.UB..
0570: 4e f6 1c 13 f6 d3 00 04 51 30 82 04 4d 30 82 03 N.......Q0..M0..
0580: 35 a0 03 02 01 02 02 03 02 3a 71 30 0d 06 09 2a 5........:q0...*
0590: 86 48 86 f7 0d 01 01 0b 05 00 30 42 31 0b 30 09 .H........0B1.0.
05a0: 06 03 55 04 06 13 02 55 53 31 16 30 14 06 03 55 ..U....US1.0...U
05b0: 04 0a 13 0d 47 65 6f 54 72 75 73 74 20 49 6e 63 ....GeoTrust Inc
05c0: 2e 31 1b 30 19 06 03 55 04 03 13 12 47 65 6f 54 .1.0...U....GeoT
05d0: 72 75 73 74 20 47 6c 6f 62 61 6c 20 43 41 30 1e rust Global CA0.
05e0: 17 0d 31 33 31 32 31 31 32 33 34 35 35 31 5a 17 ..131211234551Z.
05f0: 0d 32 32 30 35 32 30 32 33 34 35 35 31 5a 30 42 .220520234551Z0B
0600: 31 0b 30 09 06 03 55 04 06 13 02 55 53 31 16 30 1.0...U....US1.0
0610: 14 06 03 55 04 0a 13 0d 47 65 6f 54 72 75 73 74 ...U....GeoTrust
0620: 20 49 6e 63 2e 31 1b 30 19 06 03 55 04 03 13 12  Inc.1.0...U....
0630: 52 61 70 69 64 53 53 4c 20 53 48 41 32 35 36 20 RapidSSL SHA256 
0640: 43 41 30 82 01 22 30 0d 06 09 2a 86 48 86 f7 0d CA0.."0...*.H...
0650: 01 01 01 05 00 03 82 01 0f 00 30 82 01 0a 02 82 ..........0.....
0660: 01 01 00 bb 58 c1 12 01 2e 97 d8 7d 18 aa c8 c2 ....X......}....
0670: e5 85 e2 17 6c 60 2e c9 8d 31 05 39 1a 06 98 56 ....l`...1.9...V
0680: dd 54 d7 11 8c 59 5b 3d b1 54 ae 4b 21 85 32 16 .T...Y[=.T.K!.2.
0690: 5f 54 86 e6 d9 b1 d8 60 89 6b 58 be 72 da a0 00 _T.....`.kX.r...
06a0: 42 76 b1 27 59 4c cd e3 ba d4 5c d9 a6 7f bb 2b Bv.'YL....\...+
06b0: 75 d5 46 44 bd ec 40 5c 59 b7 dd 59 9f f1 6a f7 u.FD..@\Y..Y..j.
06c0: 06 fc d6 2f 19 8a 95 12 ba 9a ca d5 30 d2 38 fc .../........0.8.
06d0: 19 3b 5b 15 3b 36 d0 43 4d d1 65 a1 d4 8b c1 60 .;[.;6.CM.e....`
06e0: 41 b3 d6 70 17 cc 39 c0 9c 0c a0 3d b7 11 22 4e A..p..9....=.."N
06f0: ce d9 a9 7a d2 2a 62 9c a0 0b 4e 2a d7 c3 61 5a ...z.*b...N*..aZ
0700: 85 dd 5c 10 b9 54 3d 2d 03 f8 49 f0 bc 92 b7 b7 ..\..T=-..I.....
0710: 9c 31 c7 e9 b8 aa 82 0b 05 b9 31 cd 08 5b bb 22 .1........1..[."
0720: 0b f6 9c 8e 8a 55 1c 76 43 76 f0 e2 6e f0 df a8 .....U.vCv..n...
0730: 29 75 e7 c8 a4 87 8b 6a f1 bb 08 c9 36 18 65 ee )u.....j....6.e.
0740: 50 43 b8 5d 72 d5 28 39 e1 53 3e 25 2c da 2b 4f PC.]r.(9.S>%,.+O
0750: dd 8a 9e 50 50 e0 6f 9a c4 d5 19 26 89 01 75 73 ...PP.o....&..us
0760: 09 9b 3b 02 03 01 00 01 a3 82 01 4a 30 82 01 46 ..;........J0..F
0770: 30 1f 06 03 55 1d 23 04 18 30 16 80 14 c0 7a 98 0...U.#..0....z.
0780: 68 8d 89 fb ab 05 64 0c 11 7d aa 7d 65 b8 ca cc h.....d..}.}e...
0790: 4e 30 1d 06 03 55 1d 0e 04 16 04 14 97 c2 27 50 N0...U........'P
07a0: 9e c2 c9 ec 0c 88 32 c8 7c ad e2 a6 01 4f da 6f ......2.|....O.o
07b0: 30 12 06 03 55 1d 13 01 01 ff 04 08 30 06 01 01 0...U.......0...
07c0: ff 02 01 00 30 0e 06 03 55 1d 0f 01 01 ff 04 04 ....0...U.......
07d0: 03 02 01 06 30 36 06 03 55 1d 1f 04 2f 30 2d 30 ....06..U.../0-0
07e0: 2b a0 29 a0 27 86 25 68 74 74 70 3a 2f 2f 67 31 +.).'.%http://g1
07f0: 2e 73 79 6d 63 62 2e 63 6f 6d 2f 63 72 6c 73 2f .symcb.com/crls/
0800: 67 74 67 6c 6f 62 61 6c 2e 63 72 6c 30 2f 06 08 gtglobal.crl0/..
0810: 2b 06 01 05 05 07 01 01 04 23 30 21 30 1f 06 08 +........#0!0...
0820: 2b 06 01 05 05 07 30 01 86 13 68 74 74 70 3a 2f +.....0...http:/
0830: 2f 67 32 2e 73 79 6d 63 62 2e 63 6f 6d 30 4c 06 /g2.symcb.com0L.
0840: 03 55 1d 20 04 45 30 43 30 41 06 0a 60 86 48 01 .U. .E0C0A..`.H.
0850: 86 f8 45 01 07 36 30 33 30 31 06 08 2b 06 01 05 ..E..60301..+...
0860: 05 07 02 01 16 25 68 74 74 70 3a 2f 2f 77 77 77 .....%http://www
0870: 2e 67 65 6f 74 72 75 73 74 2e 63 6f 6d 2f 72 65 .geotrust.com/re
0880: 73 6f 75 72 63 65 73 2f 63 70 73 30 29 06 03 55 sources/cps0)..U
0890: 1d 11 04 22 30 20 a4 1e 30 1c 31 1a 30 18 06 03 ..."0 ..0.1.0...
08a0: 55 04 03 13 11 53 79 6d 61 6e 74 65 63 50 4b 49 U....SymantecPKI
08b0: 2d 31 2d 35 36 39 30 0d 06 09 2a 86 48 86 f7 0d -1-5690...*.H...
08c0: 01 01 0b 05 00 03 82 01 01 00 35 eb e1 8b 20 56 ..........5... V
08d0: 94 ba 7a bd 79 a9 f6 e3 fe 6e 38 b4 32 c1 a3 db ..z.y....n8.2...
08e0: 58 56 20 3e 7d c7 3a b1 67 69 d5 79 14 1b f6 fa XV >}.:.gi.y....
08f0: ec 60 f2 79 cd 0a 0c 60 8a 74 4c a3 93 2a a0 f0 .`.y...`.tL..*..
0900: 51 7f cd e9 f9 92 fd 96 ab 45 f5 62 3d 3f 60 46 Q.......E.b=?`F
0910: 50 13 3d 20 13 18 2e 94 46 ae d5 21 fe 43 a1 c9 P.= ....F..!.C..
0920: 23 fe 53 c4 bf 1a d8 ac 3a ca de 66 97 23 ae d3 #.S.....:..f.#..
0930: df 4a 4d 73 1f 6f 31 a2 51 04 16 6a 00 eb f9 8d .JMs.o1.Q..j....
0940: 43 81 f0 50 a1 1f a6 ca 3a f3 28 3c 5f 51 ac d7 C..P....:.(<_Q..
0950: 0a 45 77 4b 0e 52 62 1b d8 38 51 a0 92 2d 3f 90 .EwK.Rb..8Q..-?.
0960: 6e c8 7e 40 9f 20 46 15 5d e0 50 7c e1 76 af 5e n.~@. F.].P|.v.^
0970: ed 11 d3 2f 13 b9 b8 25 a4 af 58 09 af 35 b4 62 .../...%..X..5.b
0980: 54 85 e3 48 de bc d2 90 7a 7a a4 84 0d a3 42 f2 T..H....zz....B.
0990: 51 c0 d4 ad 53 65 5d 6c f8 3f 1f 06 f2 4f cb 97 Q...Se]l.?...O..
09a0: a0 4a 59 c6 78 d1 e8 03 b9 85 6d 2c ba e1 5f b6 .JY.x.....m,.._.
09b0: ad 2b 3e 25 79 c5 8b 56 d5 e3 09 80 ea c1 27 c2 .+>%y..V......'.
09c0: d9 0e ec 47 0a e9 d0 ca fc d8                   ...G......
<= Recv SSL data, 5 bytes (0x5)
0000: 16 03 03 01 4d                                  ....M
== Info: TLSv1.2 (IN), TLS handshake, Server key exchange (12):
<= Recv SSL data, 333 bytes (0x14d)
0000: 0c 00 01 49 03 00 17 41 04 99 24 4f 6c 47 40 e7 ...I...A..$OlG@.
0010: 08 ff b8 cf 5b 23 26 de b8 d2 2a 57 9d c0 8c 78 ....[#&...*W...x
0020: 0b 1f 24 ca 71 01 f8 fb 53 97 8c 9e 45 5f 9a 54 ..$.q...S...E_.T
0030: 07 e2 fa d3 98 c9 80 13 ed e8 de 5e b9 d4 45 38 ...........^..E8
0040: f1 d6 09 17 7f 08 e2 8f 60 06 01 01 00 b4 45 ee .......`.....E.
0050: dd ce 91 c6 ee 41 0d 58 b8 1c 1d 2a 91 6c a0 b0 .....A.X...*.l..
0060: b5 6e 91 23 4d e3 c9 7f 19 53 fc ec 89 f1 02 c7 .n.#M...S......
0070: 68 4e 5e 52 2d 56 c7 cd c9 ac a5 0c 30 a7 f9 97 hN^R-V......0...
0080: b4 be cf 0e f4 81 e8 3e 73 23 1d 5b 5e 92 29 c6 .......>s#.[^.).
0090: 0b ba b8 92 5d 4c 2f d2 7f db bc ab 5c 38 34 da ....]L/....\84.
00a0: 7a c0 24 3c 6a 41 60 34 e5 40 7a aa 64 a8 05 4d z.$<jA`4.@z.d..M
00b0: de 81 1f 0c 5d aa be b3 96 eb 24 c4 7f a5 fa 19 ....].....$....
00c0: 6f 8c a5 b0 27 28 01 f3 f6 0b e3 27 05 27 db f3 o...'(.....'.'..
00d0: 17 00 b4 aa dd 29 c7 6e 73 2c 44 53 ca 0b a6 e4 .....).ns,DS....
00e0: 08 6e ad 86 38 72 0d d4 49 00 5b 2d f8 f0 3f d0 .n..8r..I.[-..?.
00f0: fd 0e 1e 8a 66 92 9c 39 a6 92 4a e1 cf 71 35 53 ....f..9..J..q5S
0100: f4 b1 81 34 d3 62 7f 4b 1c 56 21 aa fd 95 d7 5b ...4.bK.V!....[
0110: 26 6e 55 ac 75 48 4b 0d 07 22 01 65 29 17 82 a9 &nU.uHK..".e)...
0120: 21 75 18 28 dc 07 06 50 ce 9a 72 43 fe c2 60 e4 !u.(...P..rC..`.
0130: b8 e5 8c 21 cc 5e f1 fc 17 cc 0b 0d b5 ae ba 8c ...!.^..........
0140: 9e dd b1 c8 37 d6 de 69 33 b5 54 54 1a          ....7..i3.TT.
<= Recv SSL data, 5 bytes (0x5)
0000: 16 03 03 00 04                                  .....
== Info: TLSv1.2 (IN), TLS handshake, Server finished (14):
<= Recv SSL data, 4 bytes (0x4)
0000: 0e 00 00 00                                     ....
=> Send SSL data, 5 bytes (0x5)
0000: 16 03 03 00 46                                  ....F
== Info: TLSv1.2 (OUT), TLS handshake, Client key exchange (16):
=> Send SSL data, 70 bytes (0x46)
0000: 10 00 00 42 41 04 bc 26 79 9a 5b 7e 10 f0 e5 57 ...BA..&y.[~...W
0010: 96 ea 73 14 a3 e1 51 5d 69 df 7c 85 50 a5 fc 3f ..s...Q]i.|.P..?
0020: e8 84 6e ce 84 df 34 cd 90 0b 91 04 bf 53 72 bf ..n...4......Sr.
0030: 23 d4 10 59 03 73 5a e7 cf 30 0d 85 0b 07 eb 7e #..Y.sZ..0.....~
0040: 89 c5 3d 57 e7 45                               ..=W.E
=> Send SSL data, 5 bytes (0x5)
0000: 14 03 03 00 01                                  .....
== Info: TLSv1.2 (OUT), TLS change cipher, Client hello (1):
=> Send SSL data, 1 bytes (0x1)
0000: 01                                              .
=> Send SSL data, 5 bytes (0x5)
0000: 16 03 03 00 3c                                  ....<
== Info: TLSv1.2 (OUT), TLS handshake, Unknown (67):
=> Send SSL data, 36 bytes (0x24)
0000: 43 00 00 20 08 68 74 74 70 2f 31 2e 31 16 00 00 C.. .http/1.1...
0010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
0020: 00 00 00 00                                     ....
=> Send SSL data, 5 bytes (0x5)
0000: 16 03 03 00 28                                  ....(
== Info: TLSv1.2 (OUT), TLS handshake, Finished (20):
=> Send SSL data, 16 bytes (0x10)
0000: 14 00 00 0c 19 2e 9f 5f 7d 43 b7 0e 8c 2c cc fa ......._}C...,..
<= Recv SSL data, 5 bytes (0x5)
0000: 14 03 03 00 01                                  .....
== Info: TLSv1.2 (IN), TLS change cipher, Client hello (1):
<= Recv SSL data, 1 bytes (0x1)
0000: 01                                              .
<= Recv SSL data, 5 bytes (0x5)
0000: 16 03 03 00 28                                  ....(
== Info: TLSv1.2 (IN), TLS handshake, Finished (20):
<= Recv SSL data, 16 bytes (0x10)
0000: 14 00 00 0c 52 11 db b0 3f 77 9e 6f 44 4b c9 60 ....R...?w.oDK.`
== Info: SSL connection using TLSv1.2 / ECDHE-RSA-AES256-GCM-SHA384
== Info: ALPN, server did not agree to a protocol
== Info: Server certificate:
== Info:  subject: CN=*.dive-in.co
== Info:  start date: Sep  7 00:00:00 2016 GMT
== Info:  expire date: Sep  7 23:59:59 2017 GMT
== Info:  subjectAltName: host "testapi.dive-in.co" matched cert's "*.dive-in.co"
== Info:  issuer: C=US; O=GeoTrust Inc.; CN=RapidSSL SHA256 CA
== Info:  SSL certificate verify ok.
== Info: STATE: PROTOCONNECT => DO handle 0x600061f70; line 1295 (connection #0) 
=> Send SSL data, 5 bytes (0x5)
0000: 17 03 03 00 ba                                  .....
=> Send header, 162 bytes (0xa2)
0000: 47 45 54 20 2f 61 70 69 2f 76 31 2f 65 76 65 6e GET /api/v1/even
0010: 74 2f 69 6e 76 69 74 65 2f 36 6d 35 67 70 66 6f t/invite/6m5gpfo
0020: 30 31 64 30 66 6e 39 50 57 4d 44 65 31 4e 51 3d 01d0fn9PWMDe1NQ=
0030: 3d 20 48 54 54 50 2f 31 2e 31 0d 0a 48 6f 73 74 = HTTP/1.1..Host
0040: 3a 20 74 65 73 74 61 70 69 2e 64 69 76 65 2d 69 : testapi.dive-i
0050: 6e 2e 63 6f 0d 0a 55 73 65 72 2d 41 67 65 6e 74 n.co..User-Agent
0060: 3a 20 63 75 72 6c 2f 37 2e 34 38 2e 30 0d 0a 41 : curl/7.48.0..A
0070: 63 63 65 70 74 3a 20 2a 2f 2a 0d 0a 4f 72 69 67 ccept: */*..Orig
0080: 69 6e 3a 20 68 74 74 70 73 3a 2f 2f 74 65 73 74 in: https://test
0090: 61 70 69 2e 64 69 76 65 2d 69 6e 2e 63 6f 0d 0a api.dive-in.co..
00a0: 0d 0a                                           ..
== Info: STATE: DO => DO_DONE handle 0x600061f70; line 1357 (connection #0) 
== Info: STATE: DO_DONE => WAITPERFORM handle 0x600061f70; line 1484 (connection #0) 
== Info: STATE: WAITPERFORM => PERFORM handle 0x600061f70; line 1494 (connection #0) 
<= Recv SSL data, 5 bytes (0x5)
0000: 17 03 03 08 17                                  .....
== Info: HTTP 1.1 or later with persistent connection, pipelining supported
<= Recv header, 17 bytes (0x11)
0000: 48 54 54 50 2f 31 2e 31 20 32 30 30 20 4f 4b 0d HTTP/1.1 200 OK.
0010: 0a                                              .
== Info: Server nginx/1.4.6 (Ubuntu) is not blacklisted
<= Recv header, 30 bytes (0x1e)
0000: 53 65 72 76 65 72 3a 20 6e 67 69 6e 78 2f 31 2e Server: nginx/1.
0010: 34 2e 36 20 28 55 62 75 6e 74 75 29 0d 0a       4.6 (Ubuntu)..
<= Recv header, 37 bytes (0x25)
0000: 44 61 74 65 3a 20 54 68 75 2c 20 32 32 20 53 65 Date: Thu, 22 Se
0010: 70 20 32 30 31 36 20 30 36 3a 32 35 3a 32 37 20 p 2016 06:25:27 
0020: 47 4d 54 0d 0a                                  GMT..
<= Recv header, 47 bytes (0x2f)
0000: 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 Content-Type: ap
0010: 70 6c 69 63 61 74 69 6f 6e 2f 6a 73 6f 6e 3b 20 plication/json; 
0020: 63 68 61 72 73 65 74 3d 75 74 66 2d 38 0d 0a    charset=utf-8..
<= Recv header, 28 bytes (0x1c)
0000: 54 72 61 6e 73 66 65 72 2d 45 6e 63 6f 64 69 6e Transfer-Encodin
0010: 67 3a 20 63 68 75 6e 6b 65 64 0d 0a             g: chunked..
<= Recv header, 24 bytes (0x18)
0000: 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 6b 65 65 70 Connection: keep
0010: 2d 61 6c 69 76 65 0d 0a                         -alive..
<= Recv header, 32 bytes (0x20)
0000: 41 63 63 65 73 73 2d 43 6f 6e 74 72 6f 6c 2d 41 Access-Control-A
0010: 6c 6c 6f 77 2d 4f 72 69 67 69 6e 3a 20 2a 0d 0a llow-Origin: *..
<= Recv header, 2 bytes (0x2)
0000: 0d 0a                                           ..
<= Recv data, 1830 bytes (0x726)
0000: 37 31 61 0d 0a 7b 22 73 74 61 74 75 73 22 3a 22 71a..{"status":"
0010: 73 75 63 63 65 73 73 22 2c 22 64 61 74 61 22 3a success","data":
0020: 7b 22 76 65 6e 75 65 49 64 22 3a 22 38 30 22 2c {"venueId":"80",
0030: 22 76 65 6e 75 65 4e 61 6d 65 22 3a 22 4d 65 73 "venueName":"Mes
0040: 74 65 63 68 20 54 6f 77 65 72 22 2c 22 76 65 6e tech Tower","ven
0050: 75 65 4c 61 74 69 74 75 64 65 22 3a 22 31 38 2e ueLatitude":"18.
0060: 35 36 33 34 31 37 38 22 2c 22 76 65 6e 75 65 4c 5634178","venueL
0070: 6f 6e 67 69 74 75 64 65 22 3a 22 37 33 2e 37 38 ongitude":"73.78
0080: 33 31 36 38 34 39 39 39 39 39 39 39 22 2c 22 65 316849999999","e
0090: 76 65 6e 74 49 64 22 3a 22 31 35 32 22 2c 22 65 ventId":"152","e
00a0: 76 65 6e 74 54 79 70 65 22 3a 22 41 50 50 22 2c ventType":"APP",
00b0: 22 63 68 61 74 43 68 61 6e 6e 65 6c 4e 61 6d 65 "chatChannelName
00c0: 22 3a 22 65 67 70 34 38 64 69 67 22 2c 22 68 6f ":"egp48dig","ho
00d0: 73 74 49 64 22 3a 22 32 35 22 2c 22 69 73 4d 79 stId":"25","isMy
00e0: 45 76 65 6e 74 22 3a 66 61 6c 73 65 2c 22 69 73 Event":false,"is
00f0: 50 75 62 6c 69 63 45 76 65 6e 74 22 3a 74 72 75 PublicEvent":tru
0100: 65 2c 22 69 73 50 72 6f 6d 6f 74 65 64 45 76 65 e,"isPromotedEve
0110: 6e 74 22 3a 66 61 6c 73 65 2c 22 69 73 53 75 62 nt":false,"isSub
0120: 45 76 65 6e 74 41 6c 6c 6f 77 65 64 22 3a 66 61 EventAllowed":fa
0130: 6c 73 65 2c 22 69 73 54 68 69 73 53 75 62 45 76 lse,"isThisSubEv
0140: 65 6e 74 22 3a 66 61 6c 73 65 2c 22 69 73 52 65 ent":false,"isRe
0150: 70 6f 72 74 65 64 53 70 61 6d 22 3a 66 61 6c 73 portedSpam":fals
0160: 65 2c 22 65 76 65 6e 74 4e 61 6d 65 22 3a 22 41 e,"eventName":"A
0170: 74 74 65 6e 64 61 6e 63 65 20 65 76 65 6e 74 20 ttendance event 
0180: 74 65 73 74 22 2c 22 70 72 69 76 61 63 79 4c 65 test","privacyLe
0190: 76 65 6c 22 3a 22 50 75 62 6c 69 63 22 2c 22 70 vel":"Public","p
01a0: 72 69 76 61 63 79 4c 65 76 65 6c 49 64 22 3a 22 rivacyLevelId":"
01b0: 31 22 2c 22 63 61 74 65 67 6f 72 79 4e 61 6d 65 1","categoryName
01c0: 22 3a 22 41 72 74 73 20 26 20 45 6e 74 65 72 74 ":"Arts & Entert
01d0: 61 69 6e 6d 65 6e 74 22 2c 22 63 61 74 65 67 6f ainment","catego
01e0: 72 79 49 64 22 3a 22 31 22 2c 22 65 76 65 6e 74 ryId":"1","event
01f0: 44 65 73 63 72 69 70 74 69 6f 6e 22 3a 22 22 2c Description":"",
0200: 22 68 6f 73 74 44 69 73 70 6c 61 79 50 69 63 22 "hostDisplayPic"
0210: 3a 22 68 74 74 70 73 3a 2f 2f 66 62 63 64 6e 2d :"https://fbcdn-
0220: 70 72 6f 66 69 6c 65 2d 61 2e 61 6b 61 6d 61 69 profile-a.akamai
0230: 68 64 2e 6e 65 74 2f 68 70 72 6f 66 69 6c 65 2d hd.net/hprofile-
0240: 61 6b 2d 78 61 74 31 2f 76 2f 74 31 2e 30 2d 31 ak-xat1/v/t1.0-1
0250: 2f 70 32 30 30 78 32 30 30 2f 31 33 30 35 35 33 /p200x200/130553
0260: 31 36 5f 31 35 38 37 33 39 38 33 33 38 32 33 38 16_1587398338238
0270: 31 37 33 5f 35 30 38 35 36 39 38 38 37 30 31 39 173_508569887019
0280: 36 33 36 38 35 37 30 5f 6e 2e 6a 70 67 3f 6f 68 6368570_n.jpg?oh
0290: 3d 39 66 63 31 34 33 65 61 30 39 65 62 38 65 31 =9fc143ea09eb8e1
02a0: 31 38 31 62 63 64 64 34 38 63 34 37 37 39 38 38 181bcdd48c477988
02b0: 39 26 6f 65 3d 35 38 34 41 38 46 38 31 26 5f 5f 9&oe=584A8F81&__
02c0: 67 64 61 5f 5f 3d 31 34 38 31 39 31 34 30 39 33 gda__=1481914093
02d0: 5f 30 32 38 30 39 63 66 38 66 31 66 30 32 38 62 _02809cf8f1f028b
02e0: 36 65 37 63 32 30 64 66 61 61 30 32 30 39 64 66 6e7c20dfaa0209df
02f0: 65 22 2c 22 68 6f 73 74 54 68 75 6d 62 6e 61 69 e","hostThumbnai
0300: 6c 50 69 63 22 3a 22 22 2c 22 68 6f 73 74 4e 61 lPic":"","hostNa
0310: 6d 65 22 3a 22 56 69 73 68 61 6c 22 2c 22 68 6f me":"Vishal","ho
0320: 73 74 43 68 61 74 43 68 61 6e 6e 65 6c 4e 61 6d stChatChannelNam
0330: 65 22 3a 22 75 70 66 70 64 69 75 22 2c 22 68 6f e":"upfpdiu","ho
0340: 73 74 41 67 65 22 3a 22 32 37 22 2c 22 65 76 65 stAge":"27","eve
0350: 6e 74 44 61 74 65 22 3a 22 32 30 31 36 2d 30 39 ntDate":"2016-09
0360: 2d 31 39 20 30 36 3a 33 35 3a 30 30 22 2c 22 65 -19 06:35:00","e
0370: 76 65 6e 74 54 6f 44 61 74 65 22 3a 22 32 30 31 ventToDate":"201
0380: 36 2d 30 39 2d 31 39 20 30 36 3a 33 39 3a 30 30 6-09-19 06:39:00
0390: 22 2c 22 75 73 65 72 45 76 65 6e 74 53 74 61 74 ","userEventStat
03a0: 75 73 22 3a 22 22 2c 22 65 76 65 6e 74 4c 69 6b us":"","eventLik
03b0: 65 73 43 6f 75 6e 74 22 3a 22 30 22 2c 22 76 65 esCount":"0","ve
03c0: 6e 75 65 49 6d 61 67 65 55 52 4c 22 3a 22 68 74 nueImageURL":"ht
03d0: 74 70 73 3a 2f 2f 73 33 2e 61 6d 61 7a 6f 6e 61 tps://s3.amazona
03e0: 77 73 2e 63 6f 6d 2f 64 72 6f 70 69 6e 62 75 63 ws.com/dropinbuc
03f0: 6b 65 74 2f 41 64 6d 69 6e 43 6f 6e 73 6f 6c 65 ket/AdminConsole
0400: 2f 76 65 6e 75 65 2f 38 30 2f 69 6d 61 67 65 31 /venue/80/image1
0410: 2e 6a 70 67 3f 31 34 37 34 30 33 39 30 32 36 34 .jpg?14740390264
0420: 35 33 22 2c 22 6d 69 6e 41 67 65 50 72 65 66 65 53","minAgePrefe
0430: 72 65 6e 63 65 22 3a 22 22 2c 22 6d 61 78 41 67 rence":"","maxAg
0440: 65 50 72 65 66 65 72 65 6e 63 65 22 3a 22 22 2c ePreference":"",
0450: 22 76 61 6c 69 64 61 74 69 6f 6e 4d 69 6e 41 67 "validationMinAg
0460: 65 50 72 65 66 65 72 65 6e 63 65 22 3a 22 31 38 ePreference":"18
0470: 22 2c 22 76 61 6c 69 64 61 74 69 6f 6e 4d 61 78 ","validationMax
0480: 41 67 65 50 72 65 66 65 72 65 6e 63 65 22 3a 22 AgePreference":"
0490: 35 35 22 2c 22 6d 69 6e 69 6d 75 6d 47 75 65 73 55","minimumGues
04a0: 74 73 22 3a 22 22 2c 22 6d 61 78 69 6d 75 6d 47 ts":"","maximumG
04b0: 75 65 73 74 73 22 3a 22 22 2c 22 76 61 6c 69 64 uests":"","valid
04c0: 61 74 69 6f 6e 4d 69 6e 69 6d 75 6d 47 75 65 73 ationMinimumGues
04d0: 74 73 22 3a 22 31 22 2c 22 76 61 6c 69 64 61 74 ts":"1","validat
04e0: 69 6f 6e 4d 61 78 69 6d 75 6d 47 75 65 73 74 73 ionMaximumGuests
04f0: 22 3a 22 31 30 22 2c 22 69 73 47 75 65 73 74 55 ":"10","isGuestU
0500: 6e 6c 69 6d 69 74 65 64 22 3a 6e 75 6c 6c 2c 22 nlimited":null,"
0510: 76 61 6c 69 64 61 74 69 6f 6e 49 73 47 75 65 73 validationIsGues
0520: 74 55 6e 6c 69 6d 69 74 65 64 22 3a 66 61 6c 73 tUnlimited":fals
0530: 65 2c 22 72 65 63 65 6e 74 44 72 6f 70 69 6e 44 e,"recentDropinD
0540: 69 73 70 6c 61 79 22 3a 66 61 6c 73 65 2c 22 61 isplay":false,"a
0550: 64 64 72 65 73 73 22 3a 22 42 61 6e 65 72 20 52 ddress":"Baner R
0560: 64 2c 20 42 61 6c 65 77 61 64 69 20 50 68 61 74 d, Balewadi Phat
0570: 61 2c 20 42 61 6e 65 72 2c 20 50 75 6e 65 2c 20 a, Baner, Pune, 
0580: 4d 61 68 61 72 61 73 68 74 72 61 20 34 31 31 30 Maharashtra 4110
0590: 34 35 2c 20 49 6e 64 69 61 22 2c 22 70 68 6f 6e 45, India","phon
05a0: 65 22 3a 22 22 2c 22 65 6d 61 69 6c 22 3a 22 22 e":"","email":""
05b0: 2c 22 77 65 62 73 69 74 65 4c 69 6e 6b 22 3a 22 ,"websiteLink":"
05c0: 22 2c 22 77 65 62 73 69 74 65 22 3a 22 22 2c 22 ","website":"","
05d0: 6f 72 67 49 64 22 3a 22 22 2c 22 6f 72 67 4e 61 orgId":"","orgNa
05e0: 6d 65 22 3a 22 22 2c 22 6f 72 67 4c 6f 67 6f 55 me":"","orgLogoU
05f0: 72 6c 22 3a 22 22 2c 22 76 65 6e 75 65 53 6f 75 rl":"","venueSou
0600: 72 63 65 22 3a 22 41 50 50 22 2c 22 76 65 6e 75 rce":"APP","venu
0610: 65 53 6f 75 72 63 65 49 64 22 3a 22 41 50 50 22 eSourceId":"APP"
0620: 2c 22 69 73 46 61 76 6f 75 72 69 74 65 45 76 65 ,"isFavouriteEve
0630: 6e 74 22 3a 66 61 6c 73 65 2c 22 6c 61 74 69 74 nt":false,"latit
0640: 75 64 65 22 3a 22 22 2c 22 6c 6f 6e 67 69 74 75 ude":"","longitu
0650: 64 65 22 3a 22 22 2c 22 65 76 65 6e 74 4c 69 6e de":"","eventLin
0660: 6b 22 3a 22 36 6d 35 67 70 66 6f 30 31 64 30 66 k":"6m5gpfo01d0f
0670: 6e 39 50 57 4d 44 65 31 4e 51 3d 3d 22 2c 22 69 n9PWMDe1NQ==","i
0680: 73 46 65 61 74 75 72 65 64 22 3a 66 61 6c 73 65 sFeatured":false
0690: 2c 22 65 76 65 6e 74 49 6d 61 67 65 73 44 54 4f ,"eventImagesDTO
06a0: 4c 69 73 74 22 3a 5b 5d 2c 22 65 76 65 6e 74 53 List":[],"eventS
06b0: 70 61 6d 22 3a 6e 75 6c 6c 2c 22 72 65 71 75 65 pam":null,"reque
06c0: 73 74 54 6f 4a 6f 69 6e 43 6f 75 6e 74 22 3a 22 stToJoinCount":"
06d0: 22 7d 2c 22 6d 65 73 73 61 67 65 22 3a 22 45 76 "},"message":"Ev
06e0: 65 6e 74 73 20 72 65 74 72 69 65 76 65 64 20 73 ents retrieved s
06f0: 75 63 63 65 73 73 66 75 6c 6c 79 21 22 2c 22 61 uccessfully!","a
0700: 75 74 68 54 6f 6b 65 6e 22 3a 22 22 2c 22 65 78 uthToken":"","ex
0710: 70 69 72 79 54 69 6d 65 22 3a 6e 75 6c 6c 7d 0d piryTime":null}.
0720: 0a 30 0d 0a 0d 0a                               .0....
== Info: STATE: PERFORM => DONE handle 0x600061f70; line 1652 (connection #0) 
== Info: Curl_done
== Info: Connection #0 to host testapi.dive-in.co left intact
