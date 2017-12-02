#!/bin/bash

cd /k8s/certs/;

/usr/local/bin/cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -profile=kubernetes \
  kube-proxy-csr.json | /usr/local/bin/cfssljson -bare kube-proxy
