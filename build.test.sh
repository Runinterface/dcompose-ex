#!/bin/bash

cd ..

COMPOSER_REPO="https://github.com/Runinterface/dcompose-ex.git"
EXPLORER_REPO="https://github.com/SilentNotaryEcosystem/SilentNotary-CilExplorer.git"
API_REPO="https://github.com/bottlebo/Cil-Storage.git"
CORE_REPO="https://github.com/bottlebo/Cil-core.git"

git clone $COMPOSER_REPO
git clone $EXPLORER_REPO
git clone $API_REPO
git clone $CORE_REPO

mkdir levelDb
mkdir levelDb/test

mkdir mssqlDb
mkdir mssqlDb/test

cd Cil-core
git checkout sqlStorage-stable

cd ../dcompose-ex
sudo docker-compose -f docker-compose.test.yml up -d