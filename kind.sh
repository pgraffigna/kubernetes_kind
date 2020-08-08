#!/bin/bash

echo "++ Instalación KIND ++"
curl -Lso ./kind https://kind.sigs.k8s.io/dl/v0.8.1/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind
