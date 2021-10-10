#!/bin/bash
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
ssh-keygen -t ed25519 -C "${GIT_EMAIL}"