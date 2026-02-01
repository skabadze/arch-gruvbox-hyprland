#!/bin/bash

sudo resolvconf -u
sudo wg-quick up /etc/wireguard/se-mma-wg-001.conf
