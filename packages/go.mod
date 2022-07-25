module github.com/ipfs-shipyard/gomobile-ipfs/packages

go 1.16

require (
	github.com/ipfs-shipyard/gomobile-ipfs/go v0.0.0
	github.com/ipfs/go-ipfs v0.13.0
	golang.org/x/mobile v0.0.0-20220112015953-858099ff7816
)

replace github.com/ipfs-shipyard/gomobile-ipfs/go => ../go

replace hlm-ipfs/ipfs-probe => github.com/hlm-ipfs/ipfs-probe v0.0.0-20220721081850-e20b2257bc97

replace github.com/ipfs/go-bitswap => github.com/hlm-ipfs/go-bitswap v0.6.1-0.20220419090205-c158d6843531

replace github.com/ipfs/go-ipfs-cmds => github.com/hlm-ipfs/go-ipfs-cmds v0.8.2-0.20220519061433-77febabb5ef4

replace github.com/lucas-clemente/quic-go => github.com/hlm-ipfs/quic-go v0.27.2-0.20220615072548-89fc5cb4087f

replace hlm-ipfs/x => github.com/hlm-ipfs/x v0.0.0-20211202054531-0de4aa04b33d

replace github.com/libp2p/go-libp2p => github.com/hlm-ipfs/go-libp2p v0.19.5-0.20220718073924-f1f43ba30e5d

replace github.com/libp2p/go-libp2p-quic-transport => github.com/hlm-ipfs/go-libp2p-quic-transport v0.17.1-0.20220718073456-49e0349678bc

replace github.com/ipfs/go-ipfs => github.com/hlm-ipfs/go-ipfs v0.12.3-0.20220722065257-1c907fb60d64
