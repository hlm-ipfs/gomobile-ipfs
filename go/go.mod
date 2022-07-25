module github.com/ipfs-shipyard/gomobile-ipfs/go

go 1.16

require (
	github.com/ipfs/go-datastore v0.5.1
	github.com/ipfs/go-ipfs v0.13.0
	github.com/ipfs/go-ipfs-api v0.3.0
	github.com/ipfs/go-ipfs-files v0.1.1
	github.com/libp2p/go-libp2p v0.19.4
	github.com/libp2p/go-libp2p-core v0.15.1
	github.com/libp2p/go-libp2p-quic-transport v0.17.0
	github.com/libp2p/go-libp2p-record v0.1.3
	github.com/multiformats/go-multiaddr v0.5.0
	github.com/multiformats/go-multiaddr-fmt v0.1.0
	github.com/pkg/errors v0.9.1
	go.uber.org/zap v1.21.0
)

replace hlm-ipfs/ipfs-probe => github.com/hlm-ipfs/ipfs-probe v0.0.0-20220721081850-e20b2257bc97

replace github.com/ipfs/go-bitswap => github.com/hlm-ipfs/go-bitswap v0.6.1-0.20220419090205-c158d6843531

replace github.com/ipfs/go-ipfs-cmds => github.com/hlm-ipfs/go-ipfs-cmds v0.8.2-0.20220519061433-77febabb5ef4

replace github.com/lucas-clemente/quic-go => github.com/hlm-ipfs/quic-go v0.27.2-0.20220615072548-89fc5cb4087f

replace hlm-ipfs/x => github.com/hlm-ipfs/x v0.0.0-20211202054531-0de4aa04b33d

replace github.com/libp2p/go-libp2p => github.com/hlm-ipfs/go-libp2p v0.19.5-0.20220718073924-f1f43ba30e5d

replace github.com/libp2p/go-libp2p-quic-transport => github.com/hlm-ipfs/go-libp2p-quic-transport v0.17.1-0.20220718073456-49e0349678bc

replace github.com/ipfs/go-ipfs => github.com/hlm-ipfs/go-ipfs v0.12.3-0.20220722065257-1c907fb60d64
