# command-line-arguments
"".Adder.Add STEXT nosplit size=25 args=0x20 locals=0x0
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	TEXT	"".Adder.Add(SB), NOSPLIT|ABIInternal, $0-32
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	MOVQ	$0, "".~r2+32(SP)
	0x0009 00009 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	MOVQ	"".a+16(SP), AX
	0x000e 00014 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	ADDQ	"".b+24(SP), AX
	0x0013 00019 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	MOVQ	AX, "".~r2+32(SP)
	0x0018 00024 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:11)	RET
	0x0000 48 c7 44 24 20 00 00 00 00 48 8b 44 24 10 48 03  H.D$ ....H.D$.H.
	0x0010 44 24 18 48 89 44 24 20 c3                       D$.H.D$ .
"".Adder.Sub STEXT nosplit size=25 args=0x20 locals=0x0
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	TEXT	"".Adder.Sub(SB), NOSPLIT|ABIInternal, $0-32
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	MOVQ	$0, "".~r2+32(SP)
	0x0009 00009 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	MOVQ	"".a+16(SP), AX
	0x000e 00014 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	SUBQ	"".b+24(SP), AX
	0x0013 00019 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	MOVQ	AX, "".~r2+32(SP)
	0x0018 00024 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:14)	RET
	0x0000 48 c7 44 24 20 00 00 00 00 48 8b 44 24 10 48 2b  H.D$ ....H.D$.H+
	0x0010 44 24 18 48 89 44 24 20 c3                       D$.H.D$ .
"".main STEXT size=147 args=0x0 locals=0x48
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	TEXT	"".main(SB), ABIInternal, $72-0
	0x0000 00000 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	MOVQ	(TLS), CX
	0x0009 00009 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	CMPQ	SP, 16(CX)
	0x000d 00013 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	PCDATA	$0, $-2
	0x000d 00013 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	JLS	137
	0x000f 00015 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	PCDATA	$0, $-1
	0x000f 00015 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	SUBQ	$72, SP
	0x0013 00019 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	MOVQ	BP, 64(SP)
	0x0018 00024 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	LEAQ	64(SP), BP
	0x001d 00029 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	FUNCDATA	$1, gclocals·54241e171da8af6ae173d69da0236748(SB)
	0x001d 00029 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	$0, ""..autotmp_1+32(SP)
	0x0026 00038 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	$1234, ""..autotmp_1+32(SP)
	0x002f 00047 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	$1234, (SP)
	0x0037 00055 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	PCDATA	$1, $0
	0x0037 00055 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	CALL	runtime.convT64(SB)
	0x003c 00060 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	8(SP), AX
	0x0041 00065 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	AX, ""..autotmp_2+40(SP)
	0x0046 00070 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	LEAQ	go.itab."".Adder,"".Caler(SB), CX
	0x004d 00077 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	CX, "".m+48(SP)
	0x0052 00082 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:17)	MOVQ	AX, "".m+56(SP)
	0x0057 00087 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	"".m+48(SP), AX
	0x005c 00092 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	TESTB	AL, (AX)
	0x005e 00094 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	24(AX), AX
	0x0062 00098 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	"".m+56(SP), CX
	0x0067 00103 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	CX, (SP)
	0x006b 00107 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	$10, 8(SP)
	0x0074 00116 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	MOVQ	$32, 16(SP)
	0x007d 00125 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:18)	CALL	AX
	0x007f 00127 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:19)	MOVQ	64(SP), BP
	0x0084 00132 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:19)	ADDQ	$72, SP
	0x0088 00136 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:19)	RET
	0x0089 00137 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:19)	NOP
	0x0089 00137 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	PCDATA	$1, $-1
	0x0089 00137 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	PCDATA	$0, $-2
	0x0089 00137 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	CALL	runtime.morestack_noctxt(SB)
	0x008e 00142 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	PCDATA	$0, $-1
	0x008e 00142 (/Users/lilac/workspace/gooooooo/golang_core_programming/plan9/接口/iface.go:16)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 7a 48  eH..%....H;a.vzH
	0x0010 83 ec 48 48 89 6c 24 40 48 8d 6c 24 40 48 c7 44  ..HH.l$@H.l$@H.D
	0x0020 24 20 00 00 00 00 48 c7 44 24 20 d2 04 00 00 48  $ ....H.D$ ....H
	0x0030 c7 04 24 d2 04 00 00 e8 00 00 00 00 48 8b 44 24  ..$.........H.D$
	0x0040 08 48 89 44 24 28 48 8d 0d 00 00 00 00 48 89 4c  .H.D$(H......H.L
	0x0050 24 30 48 89 44 24 38 48 8b 44 24 30 84 00 48 8b  $0H.D$8H.D$0..H.
	0x0060 40 18 48 8b 4c 24 38 48 89 0c 24 48 c7 44 24 08  @.H.L$8H..$H.D$.
	0x0070 0a 00 00 00 48 c7 44 24 10 20 00 00 00 ff d0 48  ....H.D$. .....H
	0x0080 8b 6c 24 40 48 83 c4 48 c3 e8 00 00 00 00 e9 6d  .l$@H..H.......m
	0x0090 ff ff ff                                         ...
	rel 5+4 t=17 TLS+0
	rel 56+4 t=8 runtime.convT64+0
	rel 73+4 t=16 go.itab."".Adder,"".Caler+0
	rel 125+0 t=11 +0
	rel 138+4 t=8 runtime.morestack_noctxt+0
"".(*Adder).Add STEXT dupok size=159 args=0x20 locals=0x38
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*Adder).Add(SB), DUPOK|WRAPPER|ABIInternal, $56-32
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	134
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$56, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 48(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	48(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	144
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	$0, "".~r2+88(SP)
	0x002f 00047 (<autogenerated>:1)	CMPQ	""..this+64(SP), $0
	0x0035 00053 (<autogenerated>:1)	JNE	57
	0x0037 00055 (<autogenerated>:1)	JMP	128
	0x0039 00057 (<autogenerated>:1)	MOVQ	""..this+64(SP), AX
	0x003e 00062 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0040 00064 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0043 00067 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_5+32(SP)
	0x0048 00072 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x004c 00076 (<autogenerated>:1)	MOVQ	"".a+72(SP), AX
	0x0051 00081 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0056 00086 (<autogenerated>:1)	MOVQ	"".b+80(SP), AX
	0x005b 00091 (<autogenerated>:1)	MOVQ	AX, 16(SP)
	0x0060 00096 (<autogenerated>:1)	PCDATA	$1, $1
	0x0060 00096 (<autogenerated>:1)	CALL	"".Adder.Add(SB)
	0x0065 00101 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x006a 00106 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+40(SP)
	0x006f 00111 (<autogenerated>:1)	MOVQ	AX, "".~r2+88(SP)
	0x0074 00116 (<autogenerated>:1)	MOVQ	48(SP), BP
	0x0079 00121 (<autogenerated>:1)	ADDQ	$56, SP
	0x007d 00125 (<autogenerated>:1)	RET
	0x007e 00126 (<autogenerated>:1)	NOP
	0x0080 00128 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0085 00133 (<autogenerated>:1)	XCHGL	AX, AX
	0x0086 00134 (<autogenerated>:1)	NOP
	0x0086 00134 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0086 00134 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0086 00134 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x008b 00139 (<autogenerated>:1)	PCDATA	$0, $-1
	0x008b 00139 (<autogenerated>:1)	JMP	0
	0x0090 00144 (<autogenerated>:1)	LEAQ	64(SP), DI
	0x0095 00149 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0098 00152 (<autogenerated>:1)	JNE	38
	0x009a 00154 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x009d 00157 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 77 48  eH..%....H;a.vwH
	0x0010 83 ec 38 48 89 6c 24 30 48 8d 6c 24 30 48 8b 59  ..8H.l$0H.l$0H.Y
	0x0020 20 48 85 db 75 6a 48 c7 44 24 58 00 00 00 00 48   H..ujH.D$X....H
	0x0030 83 7c 24 40 00 75 02 eb 47 48 8b 44 24 40 84 00  .|$@.u..GH.D$@..
	0x0040 48 8b 00 48 89 44 24 20 48 89 04 24 48 8b 44 24  H..H.D$ H..$H.D$
	0x0050 48 48 89 44 24 08 48 8b 44 24 50 48 89 44 24 10  HH.D$.H.D$PH.D$.
	0x0060 e8 00 00 00 00 48 8b 44 24 18 48 89 44 24 28 48  .....H.D$.H.D$(H
	0x0070 89 44 24 58 48 8b 6c 24 30 48 83 c4 38 c3 66 90  .D$XH.l$0H..8.f.
	0x0080 e8 00 00 00 00 90 e8 00 00 00 00 e9 70 ff ff ff  ............p...
	0x0090 48 8d 7c 24 40 48 39 3b 75 8c 48 89 23 eb 87     H.|$@H9;u.H.#..
	rel 5+4 t=17 TLS+0
	rel 97+4 t=8 "".Adder.Add+0
	rel 129+4 t=8 runtime.panicwrap+0
	rel 135+4 t=8 runtime.morestack_noctxt+0
"".(*Adder).Sub STEXT dupok size=159 args=0x20 locals=0x38
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*Adder).Sub(SB), DUPOK|WRAPPER|ABIInternal, $56-32
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	134
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$56, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 48(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	48(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	144
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	$0, "".~r2+88(SP)
	0x002f 00047 (<autogenerated>:1)	CMPQ	""..this+64(SP), $0
	0x0035 00053 (<autogenerated>:1)	JNE	57
	0x0037 00055 (<autogenerated>:1)	JMP	128
	0x0039 00057 (<autogenerated>:1)	MOVQ	""..this+64(SP), AX
	0x003e 00062 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0040 00064 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0043 00067 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_5+32(SP)
	0x0048 00072 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x004c 00076 (<autogenerated>:1)	MOVQ	"".a+72(SP), AX
	0x0051 00081 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0056 00086 (<autogenerated>:1)	MOVQ	"".b+80(SP), AX
	0x005b 00091 (<autogenerated>:1)	MOVQ	AX, 16(SP)
	0x0060 00096 (<autogenerated>:1)	PCDATA	$1, $1
	0x0060 00096 (<autogenerated>:1)	CALL	"".Adder.Sub(SB)
	0x0065 00101 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x006a 00106 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+40(SP)
	0x006f 00111 (<autogenerated>:1)	MOVQ	AX, "".~r2+88(SP)
	0x0074 00116 (<autogenerated>:1)	MOVQ	48(SP), BP
	0x0079 00121 (<autogenerated>:1)	ADDQ	$56, SP
	0x007d 00125 (<autogenerated>:1)	RET
	0x007e 00126 (<autogenerated>:1)	NOP
	0x0080 00128 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0085 00133 (<autogenerated>:1)	XCHGL	AX, AX
	0x0086 00134 (<autogenerated>:1)	NOP
	0x0086 00134 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0086 00134 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0086 00134 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x008b 00139 (<autogenerated>:1)	PCDATA	$0, $-1
	0x008b 00139 (<autogenerated>:1)	JMP	0
	0x0090 00144 (<autogenerated>:1)	LEAQ	64(SP), DI
	0x0095 00149 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0098 00152 (<autogenerated>:1)	JNE	38
	0x009a 00154 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x009d 00157 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 77 48  eH..%....H;a.vwH
	0x0010 83 ec 38 48 89 6c 24 30 48 8d 6c 24 30 48 8b 59  ..8H.l$0H.l$0H.Y
	0x0020 20 48 85 db 75 6a 48 c7 44 24 58 00 00 00 00 48   H..ujH.D$X....H
	0x0030 83 7c 24 40 00 75 02 eb 47 48 8b 44 24 40 84 00  .|$@.u..GH.D$@..
	0x0040 48 8b 00 48 89 44 24 20 48 89 04 24 48 8b 44 24  H..H.D$ H..$H.D$
	0x0050 48 48 89 44 24 08 48 8b 44 24 50 48 89 44 24 10  HH.D$.H.D$PH.D$.
	0x0060 e8 00 00 00 00 48 8b 44 24 18 48 89 44 24 28 48  .....H.D$.H.D$(H
	0x0070 89 44 24 58 48 8b 6c 24 30 48 83 c4 38 c3 66 90  .D$XH.l$0H..8.f.
	0x0080 e8 00 00 00 00 90 e8 00 00 00 00 e9 70 ff ff ff  ............p...
	0x0090 48 8d 7c 24 40 48 39 3b 75 8c 48 89 23 eb 87     H.|$@H9;u.H.#..
	rel 5+4 t=17 TLS+0
	rel 97+4 t=8 "".Adder.Sub+0
	rel 129+4 t=8 runtime.panicwrap+0
	rel 135+4 t=8 runtime.morestack_noctxt+0
"".Caler.Add STEXT dupok size=138 args=0x28 locals=0x30
	0x0000 00000 (<autogenerated>:1)	TEXT	"".Caler.Add(SB), DUPOK|WRAPPER|ABIInternal, $48-40
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	114
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$48, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 40(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	40(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	121
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·09cf9819fc716118c209c2d2155a3632(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	$0, "".~r2+88(SP)
	0x002f 00047 (<autogenerated>:1)	MOVQ	""..this+56(SP), AX
	0x0034 00052 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0036 00054 (<autogenerated>:1)	MOVQ	""..this+64(SP), CX
	0x003b 00059 (<autogenerated>:1)	MOVQ	24(AX), AX
	0x003f 00063 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x0043 00067 (<autogenerated>:1)	MOVQ	"".a+72(SP), CX
	0x0048 00072 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x004d 00077 (<autogenerated>:1)	MOVQ	"".b+80(SP), CX
	0x0052 00082 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x0057 00087 (<autogenerated>:1)	PCDATA	$1, $1
	0x0057 00087 (<autogenerated>:1)	CALL	AX
	0x0059 00089 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x005e 00094 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+32(SP)
	0x0063 00099 (<autogenerated>:1)	MOVQ	AX, "".~r2+88(SP)
	0x0068 00104 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x006d 00109 (<autogenerated>:1)	ADDQ	$48, SP
	0x0071 00113 (<autogenerated>:1)	RET
	0x0072 00114 (<autogenerated>:1)	NOP
	0x0072 00114 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0072 00114 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0072 00114 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0077 00119 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0077 00119 (<autogenerated>:1)	JMP	0
	0x0079 00121 (<autogenerated>:1)	LEAQ	56(SP), DI
	0x007e 00126 (<autogenerated>:1)	NOP
	0x0080 00128 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0083 00131 (<autogenerated>:1)	JNE	38
	0x0085 00133 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0088 00136 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 63 48  eH..%....H;a.vcH
	0x0010 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 8b 59  ..0H.l$(H.l$(H.Y
	0x0020 20 48 85 db 75 53 48 c7 44 24 58 00 00 00 00 48   H..uSH.D$X....H
	0x0030 8b 44 24 38 84 00 48 8b 4c 24 40 48 8b 40 18 48  .D$8..H.L$@H.@.H
	0x0040 89 0c 24 48 8b 4c 24 48 48 89 4c 24 08 48 8b 4c  ..$H.L$HH.L$.H.L
	0x0050 24 50 48 89 4c 24 10 ff d0 48 8b 44 24 18 48 89  $PH.L$...H.D$.H.
	0x0060 44 24 20 48 89 44 24 58 48 8b 6c 24 28 48 83 c4  D$ H.D$XH.l$(H..
	0x0070 30 c3 e8 00 00 00 00 eb 87 48 8d 7c 24 38 66 90  0........H.|$8f.
	0x0080 48 39 3b 75 a1 48 89 23 eb 9c                    H9;u.H.#..
	rel 5+4 t=17 TLS+0
	rel 87+0 t=11 +0
	rel 115+4 t=8 runtime.morestack_noctxt+0
"".Caler.Sub STEXT dupok size=138 args=0x28 locals=0x30
	0x0000 00000 (<autogenerated>:1)	TEXT	"".Caler.Sub(SB), DUPOK|WRAPPER|ABIInternal, $48-40
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	PCDATA	$0, $-2
	0x000d 00013 (<autogenerated>:1)	JLS	114
	0x000f 00015 (<autogenerated>:1)	PCDATA	$0, $-1
	0x000f 00015 (<autogenerated>:1)	SUBQ	$48, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 40(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	40(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	121
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·09cf9819fc716118c209c2d2155a3632(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	MOVQ	$0, "".~r2+88(SP)
	0x002f 00047 (<autogenerated>:1)	MOVQ	""..this+56(SP), AX
	0x0034 00052 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0036 00054 (<autogenerated>:1)	MOVQ	""..this+64(SP), CX
	0x003b 00059 (<autogenerated>:1)	MOVQ	32(AX), AX
	0x003f 00063 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x0043 00067 (<autogenerated>:1)	MOVQ	"".a+72(SP), CX
	0x0048 00072 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x004d 00077 (<autogenerated>:1)	MOVQ	"".b+80(SP), CX
	0x0052 00082 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x0057 00087 (<autogenerated>:1)	PCDATA	$1, $1
	0x0057 00087 (<autogenerated>:1)	CALL	AX
	0x0059 00089 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x005e 00094 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+32(SP)
	0x0063 00099 (<autogenerated>:1)	MOVQ	AX, "".~r2+88(SP)
	0x0068 00104 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x006d 00109 (<autogenerated>:1)	ADDQ	$48, SP
	0x0071 00113 (<autogenerated>:1)	RET
	0x0072 00114 (<autogenerated>:1)	NOP
	0x0072 00114 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0072 00114 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0072 00114 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0077 00119 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0077 00119 (<autogenerated>:1)	JMP	0
	0x0079 00121 (<autogenerated>:1)	LEAQ	56(SP), DI
	0x007e 00126 (<autogenerated>:1)	NOP
	0x0080 00128 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0083 00131 (<autogenerated>:1)	JNE	38
	0x0085 00133 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x0088 00136 (<autogenerated>:1)	JMP	38
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 63 48  eH..%....H;a.vcH
	0x0010 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 8b 59  ..0H.l$(H.l$(H.Y
	0x0020 20 48 85 db 75 53 48 c7 44 24 58 00 00 00 00 48   H..uSH.D$X....H
	0x0030 8b 44 24 38 84 00 48 8b 4c 24 40 48 8b 40 20 48  .D$8..H.L$@H.@ H
	0x0040 89 0c 24 48 8b 4c 24 48 48 89 4c 24 08 48 8b 4c  ..$H.L$HH.L$.H.L
	0x0050 24 50 48 89 4c 24 10 ff d0 48 8b 44 24 18 48 89  $PH.L$...H.D$.H.
	0x0060 44 24 20 48 89 44 24 58 48 8b 6c 24 28 48 83 c4  D$ H.D$XH.l$(H..
	0x0070 30 c3 e8 00 00 00 00 eb 87 48 8d 7c 24 38 66 90  0........H.|$8f.
	0x0080 48 39 3b 75 a1 48 89 23 eb 9c                    H9;u.H.#..
	rel 5+4 t=17 TLS+0
	rel 87+0 t=11 +0
	rel 115+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.producer.main SDWARFINFO dupok size=0
	0x0000 2d 4e 20 2d 6c                                   -N -l
go.cuinfo.packagename.main SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.string."0w\xaf\f\x92t\b\x02A\xe1\xc1\a\xe6\xd6\x18\xe6path\tcommand-line-arguments\nmod\tgooooooo\t(devel)\t\n\xf92C1\x86\x18 r\x00\x82B\x10A\x16\xd8\xf2" SRODATA dupok size=82
	0x0000 30 77 af 0c 92 74 08 02 41 e1 c1 07 e6 d6 18 e6  0w...t..A.......
	0x0010 70 61 74 68 09 63 6f 6d 6d 61 6e 64 2d 6c 69 6e  path.command-lin
	0x0020 65 2d 61 72 67 75 6d 65 6e 74 73 0a 6d 6f 64 09  e-arguments.mod.
	0x0030 67 6f 6f 6f 6f 6f 6f 6f 09 28 64 65 76 65 6c 29  gooooooo.(devel)
	0x0040 09 0a f9 32 43 31 86 18 20 72 00 82 42 10 41 16  ...2C1.. r..B.A.
	0x0050 d8 f2                                            ..
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
runtime.modinfo SDATA size=16
	0x0000 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00  ........R.......
	rel 0+8 t=1 go.string."0w\xaf\f\x92t\b\x02A\xe1\xc1\a\xe6\xd6\x18\xe6path\tcommand-line-arguments\nmod\tgooooooo\t(devel)\t\n\xf92C1\x86\x18 r\x00\x82B\x10A\x16\xd8\xf2"+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.Adder. SRODATA dupok size=14
	0x0000 01 00 0b 2a 6d 61 69 6e 2e 41 64 64 65 72        ...*main.Adder
type..namedata.*func(*main.Adder, int, int) int- SRODATA dupok size=35
	0x0000 00 00 20 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 41  .. *func(*main.A
	0x0010 64 64 65 72 2c 20 69 6e 74 2c 20 69 6e 74 29 20  dder, int, int) 
	0x0020 69 6e 74                                         int
type.*func(*"".Adder, int, int) int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 b0 53 49 fc 08 08 08 36 00 00 00 00 00 00 00 00  .SI....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Adder, int, int) int-+0
	rel 48+8 t=1 type.func(*"".Adder, int, int) int+0
type.func(*"".Adder, int, int) int SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7b 95 50 3c 02 08 08 33 00 00 00 00 00 00 00 00  {.P<...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 03 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.Adder, int, int) int-+0
	rel 44+4 t=6 type.*func(*"".Adder, int, int) int+0
	rel 56+8 t=1 type.*"".Adder+0
	rel 64+8 t=1 type.int+0
	rel 72+8 t=1 type.int+0
	rel 80+8 t=1 type.int+0
type..importpath."". SRODATA dupok size=7
	0x0000 00 00 04 6d 61 69 6e                             ...main
type..namedata.Add. SRODATA dupok size=6
	0x0000 01 00 03 41 64 64                                ...Add
type..namedata.*func(int, int) int- SRODATA dupok size=22
	0x0000 00 00 13 2a 66 75 6e 63 28 69 6e 74 2c 20 69 6e  ...*func(int, in
	0x0010 74 29 20 69 6e 74                                t) int
type.*func(int, int) int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 cb 45 33 24 08 08 08 36 00 00 00 00 00 00 00 00  .E3$...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int, int) int-+0
	rel 48+8 t=1 type.func(int, int) int+0
type.func(int, int) int SRODATA dupok size=80
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 cc 42 75 90 02 08 08 33 00 00 00 00 00 00 00 00  .Bu....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 02 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(int, int) int-+0
	rel 44+4 t=6 type.*func(int, int) int+0
	rel 56+8 t=1 type.int+0
	rel 64+8 t=1 type.int+0
	rel 72+8 t=1 type.int+0
type..namedata.Sub. SRODATA dupok size=6
	0x0000 01 00 03 53 75 62                                ...Sub
type.*"".Adder SRODATA size=104
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 46 c2 6b c4 09 08 08 36 00 00 00 00 00 00 00 00  F.k....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 02 00 02 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.Adder.+0
	rel 48+8 t=1 type."".Adder+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.Add.+0
	rel 76+4 t=25 type.func(int, int) int+0
	rel 80+4 t=25 "".(*Adder).Add+0
	rel 84+4 t=25 "".(*Adder).Add+0
	rel 88+4 t=5 type..namedata.Sub.+0
	rel 92+4 t=25 type.func(int, int) int+0
	rel 96+4 t=25 "".(*Adder).Sub+0
	rel 100+4 t=25 "".(*Adder).Sub+0
runtime.gcbits. SRODATA dupok size=0
type..namedata.*func(main.Adder, int, int) int- SRODATA dupok size=34
	0x0000 00 00 1f 2a 66 75 6e 63 28 6d 61 69 6e 2e 41 64  ...*func(main.Ad
	0x0010 64 65 72 2c 20 69 6e 74 2c 20 69 6e 74 29 20 69  der, int, int) i
	0x0020 6e 74                                            nt
type.*func("".Adder, int, int) int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 54 b7 41 b8 08 08 08 36 00 00 00 00 00 00 00 00  T.A....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.Adder, int, int) int-+0
	rel 48+8 t=1 type.func("".Adder, int, int) int+0
type.func("".Adder, int, int) int SRODATA dupok size=88
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e2 50 94 28 02 08 08 33 00 00 00 00 00 00 00 00  .P.(...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 03 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.Adder, int, int) int-+0
	rel 44+4 t=6 type.*func("".Adder, int, int) int+0
	rel 56+8 t=1 type."".Adder+0
	rel 64+8 t=1 type.int+0
	rel 72+8 t=1 type.int+0
	rel 80+8 t=1 type.int+0
type..namedata.id- SRODATA dupok size=5
	0x0000 00 00 02 69 64                                   ...id
type."".Adder SRODATA size=152
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 8a 3d 5f 61 0f 08 08 19 00 00 00 00 00 00 00 00  .=_a............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 02 00 02 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.Adder.+0
	rel 44+4 t=5 type.*"".Adder+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".Adder+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.id-+0
	rel 104+8 t=1 type.int+0
	rel 120+4 t=5 type..namedata.Add.+0
	rel 124+4 t=25 type.func(int, int) int+0
	rel 128+4 t=25 "".(*Adder).Add+0
	rel 132+4 t=25 "".Adder.Add+0
	rel 136+4 t=5 type..namedata.Sub.+0
	rel 140+4 t=25 type.func(int, int) int+0
	rel 144+4 t=25 "".(*Adder).Sub+0
	rel 148+4 t=25 "".Adder.Sub+0
runtime.interequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.interequal+0
type..namedata.*main.Caler. SRODATA dupok size=14
	0x0000 01 00 0b 2a 6d 61 69 6e 2e 43 61 6c 65 72        ...*main.Caler
type.*"".Caler SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 99 4a d0 48 08 08 08 36 00 00 00 00 00 00 00 00  .J.H...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.Caler.+0
	rel 48+8 t=1 type."".Caler+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type."".Caler SRODATA size=112
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 aa 6d 78 a1 07 08 08 14 00 00 00 00 00 00 00 00  .mx.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.interequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*main.Caler.+0
	rel 44+4 t=5 type.*"".Caler+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".Caler+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+4 t=5 type..namedata.Add.+0
	rel 100+4 t=5 type.func(int, int) int+0
	rel 104+4 t=5 type..namedata.Sub.+0
	rel 108+4 t=5 type.func(int, int) int+0
go.itab."".Adder,"".Caler SRODATA dupok size=40
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 8a 3d 5f 61 00 00 00 00 00 00 00 00 00 00 00 00  .=_a............
	0x0020 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type."".Caler+0
	rel 8+8 t=1 type."".Adder+0
	rel 24+8 t=1 "".(*Adder).Add+0
	rel 32+8 t=1 "".(*Adder).Sub+0
go.itablink."".Adder,"".Caler SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 go.itab."".Adder,"".Caler+0
type..importpath.unsafe. SRODATA dupok size=9
	0x0000 00 00 06 75 6e 73 61 66 65                       ...unsafe
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·54241e171da8af6ae173d69da0236748 SRODATA dupok size=9
	0x0000 01 00 00 00 03 00 00 00 00                       .........
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·09cf9819fc716118c209c2d2155a3632 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 02 00                    ..........
