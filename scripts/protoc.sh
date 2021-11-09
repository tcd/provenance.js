#!/bin/bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

PROTO_DIR=${SCRIPT_DIR}/../proto
PROTO_OUT_DIR=${SCRIPT_DIR}/../src/proto

mkdir -p ${PROTO_OUT_DIR}

# Third-party protos
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/gogoproto ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/google/api ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/google/protobuf ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos_proto ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/auth/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/bank/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/base/query/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/base/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/crypto/multisig/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/crypto/secp256k1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/cosmos/tx/signing/v1beta1 ${PROTO_DIR} ${PROTO_OUT_DIR}

# Provenance protos
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/provenance/attribute/v1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/provenance/marker/v1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/provenance/metadata/v1 ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/provenance/metadata/v1/p8e ${PROTO_DIR} ${PROTO_OUT_DIR}
${SCRIPT_DIR}/protogen.sh ${PROTO_DIR}/provenance/name/v1 ${PROTO_DIR} ${PROTO_OUT_DIR}
