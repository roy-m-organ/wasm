#!/usr/bin/env bash
# Copyright 2019-2020 @polkadot/wasm authors & contributors
# This software may be modified and distributed under the terms
# of the Apache-2.0 license. See the LICENSE file for details.

set -e

echo "*** Building packages"
cd packages/wasm-crypto

../../scripts/build-package.sh

yarn test:wasm:js

ls -alR build

cd ../..
