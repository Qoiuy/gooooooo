package mai

go build -gcflags="-S -N -l" iface.go > iface.s 2>&1