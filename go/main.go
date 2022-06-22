package main

import "github.com/ipfs-shipyard/gomobile-ipfs/go/bind/core"

func main() {
	node, err := core.NewNode(nil, nil)
	if err != nil {
		panic(err)
	}
	node.Close()
}
