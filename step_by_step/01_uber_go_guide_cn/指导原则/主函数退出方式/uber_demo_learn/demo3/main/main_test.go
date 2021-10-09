package main

import (
	"encoding/json"
	"testing"
)

func Test_readFile(t *testing.T) {
	type args struct {
		path string
	}
	tests := []struct {
		name string
		args args
	}{
		{"正常测试", args{"./main_test.go"}},
		{"演示 gotest 尚未运行其他测试", args{""}},
		{"其他测试", args{""}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := readFile(tt.args.path)
			pGot, _ := json.Marshal(got)
			t.Logf("pGot : %+v", string(pGot))
		})
	}
}
