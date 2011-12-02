#!/bin/bash -x
/usr/local/rvm/bin/rvm use 1.9.2
/usr/local/rvm/gems/ruby-1.9.2-p290/bin/rackup -s thin -I . -E production -p 4567 -D -P tmp/invite.pid
