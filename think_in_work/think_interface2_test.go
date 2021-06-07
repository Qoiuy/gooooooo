package think_in_work

import (
	"testing"
)

func TestInitOceanReqOpts(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"test interface 转换成 []uint64 "},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := InitOceanReqOpts()

			testTypeStruct := OceanReqOptsResult{}

			for _, opt := range got {
				t.Logf("opt value type :%T", opt.value)

				switch opt.key {
				case "int ":
					testTypeStruct.Int = opt.value.(int)
				case "uint64":
					testTypeStruct.Uint64 = opt.value.(uint64)
				case "uint64 arr":
					testTypeStruct.Uint64Arr = opt.value.(Uint64Arr)
					// 似乎需要用到反射
					//uint64Arr := []uint64{}
					//testTypeStruct.Uint64Arr = opt.value.(uint64)
					//val := reflect.ValueOf(opt)
					//for i := 0; i < val.Len(); i++ {
					//	uint64Arr = append(uint64Arr, val.Index(i).Uint())
					//}
					//testTypeStruct.Uint64Arr = uint64Arr
				}
			}

			t.Logf(" result : %+v", testTypeStruct)
		})
	}
}
