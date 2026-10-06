#!/bin/bash
set -e

# sqlite3 is the command-line client, for bin/rails db. The Ruby image already
# carries the library the app itself uses.
apt-get update -qq
apt-get install -y -qq sqlite3 > /dev/null

bundle install
