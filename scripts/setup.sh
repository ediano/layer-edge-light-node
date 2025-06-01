#!/bin/bash

curl -L https://risczero.com/install | bash
rzup install
cd risc0-merkle-service && cargo build
cd .. && go build