module github.com/ipfs-shipyard/gomobile-ipfs/packages

go 1.16

require (
	github.com/ipfs-shipyard/gomobile-ipfs/go v0.0.0
	golang.org/x/mobile v0.0.0-20220112015953-858099ff7816
)

require github.com/mattn/go-runewidth v0.0.9 // indirect

replace github.com/ipfs-shipyard/gomobile-ipfs/go => ../go
