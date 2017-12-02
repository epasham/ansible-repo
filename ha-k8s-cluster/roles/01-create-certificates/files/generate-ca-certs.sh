#!/bin/bash

# Generate the CA certificate and private key
cd /k8s/certs/; cfssl gencert -initca ca-csr.json | cfssljson -bare ca
