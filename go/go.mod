module github.com/ipfs-shipyard/gomobile-ipfs/go

go 1.16

require (
	github.com/ipfs/go-datastore v0.5.1
	github.com/ipfs/go-ipfs v0.13.0
	github.com/ipfs/go-ipfs-api v0.3.0
	github.com/ipfs/go-ipfs-files v0.1.1
	github.com/libp2p/go-libp2p v0.19.4
	github.com/libp2p/go-libp2p-core v0.15.1
	github.com/libp2p/go-libp2p-record v0.1.3
	github.com/multiformats/go-multiaddr v0.5.0
	github.com/multiformats/go-multiaddr-fmt v0.1.0
	github.com/pkg/errors v0.9.1
	go.uber.org/zap v1.21.0
)

replace hlm-ipfs/ipfs-probe => github.com/hlm-ipfs/ipfs-probe v0.0.0-20220427095601-a30fb2009ca7

replace hlm-ipfs/x => github.com/hlm-ipfs/x v0.0.0-20211202054531-0de4aa04b33d

replace github.com/ipfs/go-ipfs => github.com/hlm-ipfs/go-ipfs v0.12.3-0.20220621075109-48aecf889981
