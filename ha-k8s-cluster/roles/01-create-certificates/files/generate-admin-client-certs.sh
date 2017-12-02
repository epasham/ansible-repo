#!/bin/bash

# Generate the admin client certificate and private key
cd /k8s/certs/;
/usr/local/bin/cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -profile=kubernetes \
  admin-csr.json | /usr/local/bin/cfssljson -bare admin
