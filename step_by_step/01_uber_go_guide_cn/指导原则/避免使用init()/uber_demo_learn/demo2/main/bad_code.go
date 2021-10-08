package main

import (
	"encoding/json"
	"io/ioutil"
	"os"
	"path"
)

var _config Config

func init() {
	// Bad : 基于当前目录
	cwd, _ := os.Getwd()
	// Bad: I/O 操作
	raw, _ := ioutil.ReadFile(
		path.Join(cwd, "config", "config.json"))
	json.Unmarshal(raw, &_config)
}
