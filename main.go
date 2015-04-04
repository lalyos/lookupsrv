package main

import (
	"log"
	"net"
	"os"
	"time"
)

func main() {
	if len(os.Args) < 2 {
		panic("service name required")
	}
	srv := os.Args[1]
	log.Printf("dns lookup SRV: %s started ...\n", srv)
	start := time.Now()
	_, addrs, err := net.LookupSRV("", "", srv)
	if err != nil {
		panic(err)
	}
	log.Printf("addr Target: %v Port: %v", addrs[0].Target, addrs[0].Port)
	log.Printf("SRV dns lookup took: %s ", time.Since(start))
}
