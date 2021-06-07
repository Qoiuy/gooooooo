package think_in_work

import (
	"testing"
)

func TestInitReqGetAdGroup(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"测试创建"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := InitReqGetAdGroup()
			got.Log()

			// nil pointer dereference
			got.OceanReq.Log()
		})
	}
}

func TestInitReqGetAdGroupByA1(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"测试创建"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := InitReqGetAdGroupByA1()
			got.Log()
			got.OceanReq.Log()
		})
	}
}