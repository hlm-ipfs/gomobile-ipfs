module github.com/ipfs-shipyard/gomobile-ipfs/packages

go 1.16

require (
	github.com/ipfs-shipyard/gomobile-ipfs/go v0.0.0
	golang.org/x/mobile v0.0.0-20220112015953-858099ff7816
)

require github.com/mattn/go-runewidth v0.0.9 // indirect

replace github.com/ipfs-shipyard/gomobile-ipfs/go => ../go

require hlm-ipfs/x v0.0.0 // indirect
require hlm-ipfs/ipfs-probe v0.0.0 // indirect
require github.com/ipfs/go-bitswap v0.6.0  // indirect
require github.com/ipfs/go-ipfs-cmds v0.8.1  // indirect
require github.com/lucas-clemente/quic-go v0.27.1 // indirect
require github.com/libp2p/go-libp2p-quic-transport v0.17.0

replace hlm-ipfs/ipfs-probe => github.com/hlm-ipfs/ipfs-probe v0.0.0-20220427095601-a30fb2009ca7

replace github.com/ipfs/go-bitswap => github.com/hlm-ipfs/go-bitswap v0.6.1-0.20220419090205-c158d6843531

replace github.com/ipfs/go-ipfs-cmds => github.com/hlm-ipfs/go-ipfs-cmds v0.8.2-0.20220519061433-77febabb5ef4

replace github.com/lucas-clemente/quic-go => github.com/hlm-ipfs/quic-go v0.27.2-0.20220615072548-89fc5cb4087f

replace hlm-ipfs/x => github.com/hlm-ipfs/x v0.0.0-20211202054531-0de4aa04b33d

replace github.com/libp2p/go-libp2p-quic-transport => github.com/hlm-ipfs/go-libp2p-quic-transport v0.17.1-0.20220615082203-5edd37755676

replace github.com/ipfs/go-ipfs => github.com/hlm-ipfs/go-ipfs v0.12.3-0.20220621075109-48aecf889981
