package main

import (
	"encoding/json"
	"io/ioutil"
	"os"
	"path"
)

func loadConfig() Config {

	cwd, _ := os.Getwd()
	// handle err

	raw, _ := ioutil.ReadFile(
		path.Join(cwd, "config", "config.json"))
	// handle err

	var config Config
	json.Unmarshal(raw, &config)
	return config

}
