#!/bin/bash

sudo wg-quick down /etc/wireguard/se-mma-wg-001.conf
sudo resolvconf -u
