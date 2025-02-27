#!/usr/bin/env sh

NODE_DIR=$HOME/node
HEIMDALL_HOME=$HOME/node/.heimdalld

# init heimdall node
heimdalld init --home $HEIMDALL_HOME

# copy node directories to home directories
cp -rf $NODE_DIR/heimdall/config/genesis.json $HEIMDALL_HOME/config/
