#!/bin/bash
sysctl -w net.nf_conntrack_max=655360
sysctl -w vm.max_map_count=262144
/usr/bin/fig up -d --allow-insecure-ssl
