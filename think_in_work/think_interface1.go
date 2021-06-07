package think_in_work

import "fmt"

// 剧透: 接口可以 作为方法的引用
//got.Log()
//got.OceanReq.Log()

//  正确的使用方式
type ReqGetAdGroupV1 struct {
	OceanReq
}

func (req *ReqGetAdGroupV1) Log() string {
	if req.OceanReq == nil {
		// 使用默认的打印
		return fmt.Sprintf("")
	}
	return req.OceanReq.Log()
}

//  针对接口的思考01 我在写代码的时候 一不小心将 一个接口写成来一个结构体的一个字段 .

// 像这样
type OceanReq interface {
	Log() string
}
type ReqGetAdGroup struct {
	OceanReq
}

// 默认实现???
func (req *ReqGetAdGroup) Log() string {
	println("default log")
	return "default log"
}

func InitReqGetAdGroup() ReqGetAdGroup {
	res := ReqGetAdGroup{}
	return res
}

// 感觉应该理解 成 ReqGetAdGroup 即是这个接口的实现 包含了这个接口

// 实现两个接口 放在这个结构体初始化里面
type A1 struct {
}

func (req *A1) Log() string {
	println("A1 Log")
	return ""
}

type A2 struct {
}

func (req *A2) Log() string {
	println("A2 Log")
	return ""
}

func InitReqGetAdGroupByA1() ReqGetAdGroup {
	res := ReqGetAdGroup{OceanReq: &A1{}}
	return res
}

//引用方式 不同 ，即下面两个是又不小区别的..
//got.Log()
//got.OceanReq.Log()
