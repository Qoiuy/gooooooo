"".swap STEXT nosplit size=39 args=0x20 locals=0x0
	0x0000 00000 (swap.go:4)	TEXT	"".swap(SB), NOSPLIT|ABIInternal, $0-32
	0x0000 00000 (swap.go:4)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (swap.go:4)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (swap.go:4)	MOVQ	$0, "".x+24(SP) // 初始化返回值X为0
	0x0009 00009 (swap.go:4)	MOVQ	$0, "".y+32(SP) // 初始化返回值Y为0
	0x0012 00018 (swap.go:5)	MOVQ	"".a+8(SP), AX  // 取第二个参数赋值给返回值X
	0x0017 00023 (swap.go:5)	MOVQ	AX, "".x+24(SP) //
	0x001c 00028 (swap.go:6)	MOVQ	"".b+16(SP), AX // 取第一个参数赋值给返回值Y
	0x0021 00033 (swap.go:6)	MOVQ	AX, "".y+32(SP) //
	0x0026 00038 (swap.go:7)	RET
	0x0000 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00  H.D$.....H.D$ ..
	0x0010 00 00 48 8b 44 24 08 48 89 44 24 18 48 8b 44 24  ..H.D$.H.D$.H.D$
	0x0020 10 48 89 44 24 20 c3                             .H.D$ .
"".main STEXT size=71 args=0x0 locals=0x28                                                     // main 函数堆栈初始化: 开辟栈空间，保存BP寄存器
	0x0000 00000 (swap.go:10)	TEXT	"".main(SB), ABIInternal, $40-0
	0x0000 00000 (swap.go:10)	MOVQ	(TLS), CX
	0x0009 00009 (swap.go:10)	CMPQ	SP, 16(CX)
	0x000d 00013 (swap.go:10)	PCDATA	$0, $-2
	0x000d 00013 (swap.go:10)	JLS	64
	0x000f 00015 (swap.go:10)	PCDATA	$0, $-1
	0x000f 00015 (swap.go:10)	SUBQ	$40, SP    // 为函数开辟栈空间   // <= 开辟栈空间，压栈BP保存现场
	0x0013 00019 (swap.go:10)	MOVQ	BP, 32(SP) // 保存当前函数函数BP到Y(SP)位置,Y为相对SP的偏移量
	0x0018 00024 (swap.go:10)	LEAQ	32(SP), BP // 重置BP,使其指向刚刚保存BP旧位值的位置, 这里主要是方便后续BP的恢复
	0x001d 00029 (swap.go:10)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB
	0x001d 00029 (swap.go:10)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (swap.go:11)	MOVQ	$10, (SP) ) // 初始化Add函数的调用参数1的值为10
	0x0025 00037 (swap.go:11)	MOVQ	$20, 8(SP)  // 初始化Add函数的调用参数2的值为20
	0x002e 00046 (swap.go:11)	PCDATA	$1, $0      //
	0x002e 00046 (swap.go:11)	CALL	"".swap(SB) // 调用swap函数,注意call隐含一个将swap下一条指令地址压栈的动作 即sp=sp+8
	0x0033 00051 (swap.go:12)	MOVQ	32(SP), BP  // 恢复栈空间
	0x0038 00056 (swap.go:12)	ADDQ	$40, SP     // 恢复SP的值为函数开始时的值
	0x003c 00060 (swap.go:12)	RET
	0x003d 00061 (swap.go:12)	NOP
	0x003d 00061 (swap.go:10)	PCDATA	$1, $-1
	0x003d 00061 (swap.go:10)	PCDATA	$0, $-2
	0x003d 00061 (swap.go:10)	NOP
	0x0040 00064 (swap.go:10)	CALL	runtime.morestack_noctxt(SB)
	0x0045 00069 (swap.go:10)	PCDATA	$0, $-1
	0x0045 00069 (swap.go:10)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 31 48  dH..%....H;a.v1H
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 c7 04  ..(H.l$ H.l$ H..
	0x0020 24 0a 00 00 00 48 c7 44 24 08 14 00 00 00 e8 00  $....H.D$.......
	0x0030 00 00 00 48 8b 6c 24 20 48 83 c4 28 c3 0f 1f 00  ...H.l$ H..(....
	0x0040 e8 00 00 00 00 eb b9                             .......
	rel 5+4 t=17 TLS+0
	rel 47+4 t=8 "".swap+0
	rel 65+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
