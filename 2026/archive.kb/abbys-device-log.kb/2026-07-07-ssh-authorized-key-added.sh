#!/usr/bin/env bash
# Add the laptop's ssh key to Termux's authorized_keys on the tablet,
# enabling passwordless ssh from the laptop (bukzor@penguin).
# See: 2026-07-07-ssh-authorized-key-added.md
set -euo pipefail

ssh-add -L | grep -q bukzor@penguin || ssh-add   # load laptop's default key if not already in the agent

ssh-add -L | ssh -p 8022 u0_a344@192.168.87.29 'cat >> ~/.ssh/authorized_keys'

# Verify
ssh -p 8022 -o BatchMode=yes u0_a344@192.168.87.29 echo ok
