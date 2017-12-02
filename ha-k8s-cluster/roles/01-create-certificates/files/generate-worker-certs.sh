#!/bin/bash

cd /k8s/certs/;
instance=$1

INTERNAL_IP=$(cat /etc/hosts|grep $instance|awk '{print $1}')

/usr/local/bin/cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -hostname=${instance},${INTERNAL_IP} \
  -profile=kubernetes \
  ${instance}-csr.json | /usr/local/bin/cfssljson -bare ${instance}
