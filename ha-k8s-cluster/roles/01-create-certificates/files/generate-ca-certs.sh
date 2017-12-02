#!/bin/bash

# Generate the CA certificate and private key
cd /k8s/certs/; /usr/local/bin/cfssl gencert -initca ca-csr.json | /usr/local/bin/cfssljson -bare ca
