"".a STEXT size=91 args=0x10 locals=0x18
	0x0000 00000 (c2_7_4a.go:3)	TEXT	"".a(SB), ABIInternal, $24-16  // 2-12行 栈环境准备
	0x0000 00000 (c2_7_4a.go:3)	MOVQ	(TLS), CX
	0x0009 00009 (c2_7_4a.go:3)	CMPQ	SP, 16(CX)
	0x000d 00013 (c2_7_4a.go:3)	PCDATA	$0, $-2
	0x000d 00013 (c2_7_4a.go:3)	JLS	84
	0x000f 00015 (c2_7_4a.go:3)	PCDATA	$0, $-1
	0x000f 00015 (c2_7_4a.go:3)	SUBQ	$24, SP
	0x0013 00019 (c2_7_4a.go:3)	MOVQ	BP, 16(SP)
	0x0018 00024 (c2_7_4a.go:3)	LEAQ	16(SP), BP
	0x001d 00029 (c2_7_4a.go:3)	FUNCDATA	$0, gclocals·f207267fbf96a0178e8758c6e3e0ce28(SB)
	0x001d 00029 (c2_7_4a.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (c2_7_4a.go:4)	LEAQ	type.noalg.struct { F uintptr; "".i int }(SB), AX // 前面是闭包类型, 里面包含一个函数指针和一个对外部环境的引用
	0x0024 00036 (c2_7_4a.go:4)	MOVQ	AX, (SP) // 将闭包类型元信息放到SP位置, SP地址存放的是call函数调用的第一个参数
	0x0028 00040 (c2_7_4a.go:4)	PCDATA	$1, $0
	0x0028 00040 (c2_7_4a.go:4)	CALL	runtime.newobject(SB) // 创建闭包对象
	0x002d 00045 (c2_7_4a.go:4)	MOVQ	8(SP), AX // 将newobject返回的对象地址复制给AX寄存器
	0x0032 00050 (c2_7_4a.go:4)	LEAQ	"".a.func1(SB), CX // 将a函数里面的匿名函数a.func1指针复制到CX寄存器
	0x0039 00057 (c2_7_4a.go:4)	MOVQ	CX, (AX) // 将CX寄存器中存放的a.func1函数指针复制到闭包对象的函数指针位置
	0x003c 00060 (c2_7_4a.go:4)	MOVQ	"".i+32(SP), CX // 将外部闭包变量i的值复制到闭包对象的i处
	0x0041 00065 (c2_7_4a.go:4)	MOVQ	CX, 8(AX)
	0x0045 00069 (c2_7_4a.go:4)	MOVQ	AX, "".~r1+40(SP) // 复制闭包对象指针值到函数返回值位置
	0x004a 00074 (c2_7_4a.go:4)	MOVQ	16(SP), BP
	0x004f 00079 (c2_7_4a.go:4)	ADDQ	$24, SP
	0x0053 00083 (c2_7_4a.go:4)	RET
	0x0054 00084 (c2_7_4a.go:4)	NOP
	0x0054 00084 (c2_7_4a.go:3)	PCDATA	$1, $-1
	0x0054 00084 (c2_7_4a.go:3)	PCDATA	$0, $-2
	0x0054 00084 (c2_7_4a.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0059 00089 (c2_7_4a.go:3)	PCDATA	$0, $-1
	0x0059 00089 (c2_7_4a.go:3)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 45 48  dH..%....H;a.vEH
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 8d 05  ...H.l$.H.l$.H..
	0x0020 00 00 00 00 48 89 04 24 e8 00 00 00 00 48 8b 44  ....H..$.....H.D
	0x0030 24 08 48 8d 0d 00 00 00 00 48 89 08 48 8b 4c 24  $.H......H..H.L$
	0x0040 20 48 89 48 08 48 89 44 24 28 48 8b 6c 24 10 48   H.H.H.D$(H.l$.H
	0x0050 83 c4 18 c3 e8 00 00 00 00 eb a5                 ...........
	rel 5+4 t=17 TLS+0
	rel 32+4 t=16 type.noalg.struct { F uintptr; "".i int }+0
	rel 41+4 t=8 runtime.newobject+0
	rel 53+4 t=16 "".a.func1+0
	rel 85+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=71 args=0x0 locals=0x18
	0x0000 00000 (c2_7_4a.go:8)	TEXT	"".main(SB), ABIInternal, $24-0  // 44 - 54
	0x0000 00000 (c2_7_4a.go:8)	MOVQ	(TLS), CX
	0x0009 00009 (c2_7_4a.go:8)	CMPQ	SP, 16(CX)
	0x000d 00013 (c2_7_4a.go:8)	PCDATA	$0, $-2
	0x000d 00013 (c2_7_4a.go:8)	JLS	64
	0x000f 00015 (c2_7_4a.go:8)	PCDATA	$0, $-1
	0x000f 00015 (c2_7_4a.go:8)	SUBQ	$24, SP
	0x0013 00019 (c2_7_4a.go:8)	MOVQ	BP, 16(SP)
	0x0018 00024 (c2_7_4a.go:8)	LEAQ	16(SP), BP
	0x001d 00029 (c2_7_4a.go:8)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (c2_7_4a.go:8)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (c2_7_4a.go:9)	MOVQ	$1, (SP) // 将立即数1复制到SP位置,为后续的CALL指令准备参数
	0x0025 00037 (c2_7_4a.go:9)	PCDATA	$1, $0
	0x0025 00037 (c2_7_4a.go:9)	CALL	"".a(SB) //  调用函数a()
	0x002a 00042 (c2_7_4a.go:9)	MOVQ	8(SP), DX //复制函数返回值到DX寄存器
	0x002f 00047 (c2_7_4a.go:10)	MOVQ	(DX), AX // 间接寻址,复制闭包对象中的函数指针到AX寄存器
	0x0032 00050 (c2_7_4a.go:10)	CALL	AX // 调用AX寄存器指向的函数
	0x0034 00052 (c2_7_4a.go:11)	MOVQ	16(SP), BP //61-63 恢复环境 并返回
	0x0039 00057 (c2_7_4a.go:11)	ADDQ	$24, SP
	0x003d 00061 (c2_7_4a.go:11)	RET
	0x003e 00062 (c2_7_4a.go:11)	NOP
	0x003e 00062 (c2_7_4a.go:8)	PCDATA	$1, $-1
	0x003e 00062 (c2_7_4a.go:8)	PCDATA	$0, $-2
	0x003e 00062 (c2_7_4a.go:8)	NOP
	0x0040 00064 (c2_7_4a.go:8)	CALL	runtime.morestack_noctxt(SB)
	0x0045 00069 (c2_7_4a.go:8)	PCDATA	$0, $-1
	0x0045 00069 (c2_7_4a.go:8)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 31 48  dH..%....H;a.v1H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 c7 04  ...H.l$.H.l$.H..
	0x0020 24 01 00 00 00 e8 00 00 00 00 48 8b 54 24 08 48  $.........H.T$.H
	0x0030 8b 02 ff d0 48 8b 6c 24 10 48 83 c4 18 c3 66 90  ....H.l$.H....f.
	0x0040 e8 00 00 00 00 eb b9                             .......
	rel 5+4 t=17 TLS+0
	rel 38+4 t=8 "".a+0
	rel 50+0 t=11 +0
	rel 65+4 t=8 runtime.morestack_noctxt+0
"".a.func1 STEXT size=79 args=0x0 locals=0x18
	0x0000 00000 (c2_7_4a.go:4)	TEXT	"".a.func1(SB), NEEDCTXT|ABIInternal, $24-0
	0x0000 00000 (c2_7_4a.go:4)	MOVQ	(TLS), CX
	0x0009 00009 (c2_7_4a.go:4)	CMPQ	SP, 16(CX)
	0x000d 00013 (c2_7_4a.go:4)	PCDATA	$0, $-2
	0x000d 00013 (c2_7_4a.go:4)	JLS	72
	0x000f 00015 (c2_7_4a.go:4)	PCDATA	$0, $-1
	0x000f 00015 (c2_7_4a.go:4)	SUBQ	$24, SP
	0x0013 00019 (c2_7_4a.go:4)	MOVQ	BP, 16(SP)
	0x0018 00024 (c2_7_4a.go:4)	LEAQ	16(SP), BP
	0x001d 00029 (c2_7_4a.go:4)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (c2_7_4a.go:4)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (c2_7_4a.go:4)	MOVQ	8(DX), AX
	0x0021 00033 (c2_7_4a.go:4)	MOVQ	AX, "".i+8(SP)
	0x0026 00038 (c2_7_4a.go:5)	PCDATA	$1, $0
	0x0026 00038 (c2_7_4a.go:5)	CALL	runtime.printlock(SB)
	0x002b 00043 (c2_7_4a.go:5)	MOVQ	"".i+8(SP), AX
	0x0030 00048 (c2_7_4a.go:5)	MOVQ	AX, (SP)
	0x0034 00052 (c2_7_4a.go:5)	CALL	runtime.printint(SB)
	0x0039 00057 (c2_7_4a.go:5)	CALL	runtime.printunlock(SB)
	0x003e 00062 (c2_7_4a.go:6)	MOVQ	16(SP), BP
	0x0043 00067 (c2_7_4a.go:6)	ADDQ	$24, SP
	0x0047 00071 (c2_7_4a.go:6)	RET
	0x0048 00072 (c2_7_4a.go:6)	NOP
	0x0048 00072 (c2_7_4a.go:4)	PCDATA	$1, $-1
	0x0048 00072 (c2_7_4a.go:4)	PCDATA	$0, $-2
	0x0048 00072 (c2_7_4a.go:4)	CALL	runtime.morestack(SB)
	0x004d 00077 (c2_7_4a.go:4)	PCDATA	$0, $-1
	0x004d 00077 (c2_7_4a.go:4)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 39 48  dH..%....H;a.v9H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 8b 42  ...H.l$.H.l$.H.B
	0x0020 08 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 08  .H.D$......H.D$.
	0x0030 48 89 04 24 e8 00 00 00 00 e8 00 00 00 00 48 8b  H..$..........H.
	0x0040 6c 24 10 48 83 c4 18 c3 e8 00 00 00 00 eb b1     l$.H...........
	rel 5+4 t=17 TLS+0
	rel 39+4 t=8 runtime.printlock+0
	rel 53+4 t=8 runtime.printint+0
	rel 58+4 t=8 runtime.printunlock+0
	rel 73+4 t=8 runtime.morestack+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*struct { F uintptr; i int }- SRODATA dupok size=31
	0x0000 00 00 1c 2a 73 74 72 75 63 74 20 7b 20 46 20 75  ...*struct { F u
	0x0010 69 6e 74 70 74 72 3b 20 69 20 69 6e 74 20 7d     intptr; i int }
type.*struct { F uintptr; "".i int } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 02 36 ff aa 08 08 08 36 00 00 00 00 00 00 00 00  .6.....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; i int }-+0
	rel 48+8 t=1 type.noalg.struct { F uintptr; "".i int }+0
runtime.gcbits. SRODATA dupok size=0
type..namedata..F- SRODATA dupok size=5
	0x0000 00 00 02 2e 46                                   ....F
type..namedata.i- SRODATA dupok size=4
	0x0000 00 00 01 69                                      ...i
type.noalg.struct { F uintptr; "".i int } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 65 85 73 7f 02 08 08 19 00 00 00 00 00 00 00 00  e.s.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*struct { F uintptr; i int }-+0
	rel 44+4 t=6 type.*struct { F uintptr; "".i int }+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type.noalg.struct { F uintptr; "".i int }+80
	rel 80+8 t=1 type..namedata..F-+0
	rel 88+8 t=1 type.uintptr+0
	rel 104+8 t=1 type..namedata.i-+0
	rel 112+8 t=1 type.int+0
gclocals·f207267fbf96a0178e8758c6e3e0ce28 SRODATA dupok size=9
	0x0000 01 00 00 00 02 00 00 00 00                       .........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
