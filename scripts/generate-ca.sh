#!/bin/bash
PROJECT_ROOT=$(dirname $(dirname $(readlink -f $0)))

step certificate create identity.linkerd.cluster.local \
  $PROJECT_ROOT/tmp/ca.crt \
  $PROJECT_ROOT/tmp/ca.key \
  --profile root-ca \
  --no-password --insecure \
  --san identity.linkerd.cluster.local

step certificate create identity.linkerd.cluster.local \
  $PROJECT_ROOT/tmp/issuer.crt \
  $PROJECT_ROOT/tmp/issuer.key \
  --ca $PROJECT_ROOT/tmp/ca.crt \
  --ca-key $PROJECT_ROOT/tmp/ca.key \
  --profile intermediate-ca \
  --not-after 8760h \
  --no-password --insecure \
  --san identity.linkerd.cluster.local

