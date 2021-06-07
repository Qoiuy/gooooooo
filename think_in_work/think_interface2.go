package think_in_work

// interface 转 int64 问题不大，
// 但是 interface 转 []int64 如何处理呢 不需要反射  只需要定义type

// OceanOpts 请求参数 作为可变参数
type OceanReqOpts struct {
	key   string
	value interface{}
}

func InitOceanReqOpts() []OceanReqOpts {
	opts := []OceanReqOpts{
		{"int ", 1},
		{"uint64", uint64(1)},
		{"uint64 arr", []uint64{1, 2, 3, 4}},
		//{"uint64 arr", Uint64Arr([]uint64{1, 2, 3, 4})},
	}

	return opts
}

type OceanReqOptsResult struct {
	Int       int
	Uint64    uint64
	Uint64Arr Uint64Arr
}

// 必须带有等号 会报错
//type Uint64Arr []uint64
type Uint64Arr = []uint64
