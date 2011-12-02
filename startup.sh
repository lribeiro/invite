#!/bin/bash
/usr/local/rvm/bin/rvm use 1.9.2
rackup -s thin -I . -E production -p 4567 -D -P tmp/invite.pid
