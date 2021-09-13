package main

import "testing"

/**
Test_1 接收者不必为结构体
示例代码中用了一个 type ByteSlice []byte 作为接收者
我上午写了一段代码 oldCode
*/
func Test_Demo(t *testing.T) {
	files := []File{{1}, {2}, {3}, {4}}

	// 旧的代码用法
	idList1 := getFileIdList(files)
	t.Log(idList1)

	// 新的代码用法
	fs := Files(files)
	idList2 := fs.GetIds()

	t.Log(idList2)

}

//---------------------------------清晰的代码 end---------------------------------

type Files []File

func (files *Files) GetIds() []uint64 {
	fileIds := make([]uint64, 0, len(*files))
	for _, f := range *files {
		fileIds = append(fileIds, uint64(f.ID))
	}
	return fileIds
}

//---------------------------------清晰的代码 end---------------------------------

//---------------------------------上午写的代码 start---------------------------------
type File struct{ ID uint }

func getFileIdList(files []File) []uint64 {
	fileIds := make([]uint64, 0, len(files))
	for _, f := range files {
		fileIds = append(fileIds, uint64(f.ID))
	}
	return fileIds
}

//---------------------------------上午写的代码 end---------------------------------
