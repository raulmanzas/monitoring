#!/bin/bash

set -e

NODE_EXPORTER_VERSION=1.1.1

mkdir -p .node_exporter && cd .node_exporter

wget https://github.com/prometheus/node_exporter/releases/download/v$NODE_EXPORTER_VERSION/node_exporter-$NODE_EXPORTER_VERSION.linux-amd64.tar.gz
tar xvfz node_exporter-$NODE_EXPORTER_VERSION.linux-amd64.tar.gz

cd node_exporter-$NODE_EXPORTER_VERSION.linux-amd64
./node_exporter
