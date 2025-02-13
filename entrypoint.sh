#!/bin/bash

set -e

# Setup the server
bw config server ${BW_HOST}

# Login
bw login --apikey

# Unlock
export BW_SESSION=$(bw unlock $BW_PASSWORD --raw)

# Verify
bw unlock --check

# Serve
echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection
