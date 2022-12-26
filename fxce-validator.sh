# source ./scripts/utils.sh

workspace=$(cd `dirname $0`; pwd)/../..
DATA_DIR=./storage/fxce-validator3

# BOOTSTRAP_TCP_PORT=30311
# # wait_for_host_port cluster-bsc-rpc  ${BOOTSTRAP_TCP_PORT}
# BOOTSTRAP_IP=$(get_host_ip cluster-bsc-rpc)
# VALIDATOR_ADDR=$(cat ${DATA_DIR}/address)
# HOST_IP=$(hostname -i)
# BOOTSTRAP_PUB_KEY=177ae5db445a2f70db781b019aedd928f5b1528a7a43448840b022408f9a21509adcce0b37c87d59da68d47a16879cc1e95a62bbac9723f7b22f4365b2afabbe

# echo "validator id: ${HOST_IP}="

# -genesis=${DATA_DIR}/genesis.json
# --config ${DATA_DIR}/config.toml
# geth --datadir=${DATA_DIR} --genesis=${DATA_DIR}/genesis.json  init ${DATA_DIR}/genesis.json

# geth --datadir=${DATA_DIR} --genesis=${DATA_DIR}/genesis.json  removedb


geth  --datadir=${DATA_DIR} --genesis=${DATA_DIR}/genesis.json console\
    --ipcdisable\
    --syncmode fast\
    --snapshot disable --diffblock=90000\
    --pipecommit true\
    --diffsync true\
    --bootnodes=enode://177ae5db445a2f70db781b019aedd928f5b1528a7a43448840b022408f9a21509adcce0b37c87d59da68d47a16879cc1e95a62bbac9723f7b22f4365b2afabbe@202.143.111.229:32010 \
    # --http\
    # --http.corsdomain=*\
    # --http.vhosts=*\
    # --ethstats fxce-validator3:pqd@202.143.111.229:32006\
    # --http.api=web3,eth,debug,personal,net,txpool\
    # --syncmode=full\
    # --gcmode=archive\
    # --allow-insecure-unlock\
    # # --unlock 0x67D7cfd808bE256C2B58755184538Ee290b153EA --password pass.txt\ 
    # --metrics \