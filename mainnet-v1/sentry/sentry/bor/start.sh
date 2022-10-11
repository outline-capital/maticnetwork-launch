#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-/home/ubuntu/node/.bor}
DATA_DIR=$BOR_DIR/data

export MC_BROADCAST_ALL_BLOCKS=no
export MC_BROADCAST_ALL_TRANSACTIONS=no

$GOPATH/bin/bor --datadir $DATA_DIR \
  --ipcpath $DATA_DIR/bor.ipc \
  --networkid '137' \
  --syncmode 'full' \
  --port 30303 \
  --cache 32768 \
  --http \
  --http.addr 127.0.0.1 \
  --http.port 8545 \
  --http.api 'admin,bor,eth,net,web3' \
  --http.vhosts '*' \
  --ws \
  --ws.addr 127.0.0.1 \
  --ws.port 8546 \
  --ws.api 'bor,debug,eth,net,web3,txpool' \
  --ws.origins '*' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.accountqueue 16 \
  --txpool.globalslots 50000 \
  --txpool.globalqueue 50000 \
  --txpool.pricelimit '30000000000' \
  --txpool.lifetime '30m' \
  --maxpeers 200 \
  --verbosity 3 \
  --metrics \
  --metrics.addr 127.0.0.1 \
  --metrics.port 6061 \
  --bootnodes "enode://0cb82b395094ee4a2915e9714894627de9ed8498fb881cec6db7c65e8b9a5bd7f2f25cc84e71e89d0947e51c76e85d0847de848c7782b13c0255247a6758178c@44.232.55.71:30303,enode://88116f4295f5a31538ae409e4d44ad40d22e44ee9342869e7d68bdec55b0f83c1530355ce8b41fbec0928a7d75a5745d528450d30aec92066ab6ba1ee351d710@159.203.9.164:30303"
