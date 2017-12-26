#!/usr/bin/env bash

set -e

mkdir --parents /config/mongodb/log /config/mongodb/db
chmod --recursive 0777 /config/mongodb
chown --recursive system:system /config/mongodb
