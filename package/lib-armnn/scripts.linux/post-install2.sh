#!/bin/bash

# Make sure we can reach our libraries via lib/ even if they were originally put into lib64/

if [ -d "$INSTALL_DIR/install/lib64" ]; then

    if ! [ -d "$INSTALL_DIR/install/lib" ]; then
        mkdir ${INSTALL_DIR}/install/lib
    fi

    cp -r ${INSTALL_DIR}/install/lib64/* ${INSTALL_DIR}/install/lib
fi

# From rel.22.05, copy "src/profiling/{common,client}" to "install/include".
if [[ "${PACKAGE_VERSION}" == "22.05" || "${PACKAGE_VERSION}" == "22.08" ]]; then
    cp -rf ${INSTALL_DIR}/src/profiling/common ${INSTALL_DIR}/install/include
    cp -rf ${INSTALL_DIR}/src/profiling/client ${INSTALL_DIR}/install/include
fi
