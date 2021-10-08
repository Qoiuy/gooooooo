package 避免可变全局变量

import (
	"fmt"
	"testing"
	"time"
)

// 全局变量
var _timeNow = time.Now

// ============================== 分割线 ========================
func sign(msg string) string {
	now := _timeNow()
	return fmt.Sprintf("%s:%v", msg, now)
}

func Test_3(t *testing.T) {
	oldTimeNow := _timeNow
	_timeNow = func() time.Time {
		return someFixedTime
	}
	defer func() { _timeNow = oldTimeNow }()

}

// ============================== 分割线 ========================

// 使用一个结果体包含全局变量 ?  单例?
type singer struct {
	now func() time.Time
}

func newSinger() *singer {
	return &singer{now: time.Now}
}

// ============================== 分割线 ========================

func (s *singer) Sign(msg string) string {
	now := s.now()
	return fmt.Sprintf("%s:%v", msg, now)
}

func Test_4(t *testing.T) {
	s := newSinger()
	s.now = func() time.Time {
		return someFixedTime
	}
}

// ============================== 分割线 ========================
var someFixedTime time.Time
