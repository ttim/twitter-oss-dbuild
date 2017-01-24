#!/bin/bash

set -e

export JVM_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:ReservedCodeCacheSize=96m -XX:+TieredCompilation -XX:MaxPermSize=1024m -Xms512m -Xmx2048m -Xss2m"

BASEDIR=$(dirname $(dirname $0))
DBUILD_CONF="$BASEDIR/twitter-oss.dbuild"

$BASEDIR/bin/dbuild $DBUILD_CONF 2>&1
