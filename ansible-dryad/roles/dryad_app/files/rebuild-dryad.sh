#! /bin/bash

echo Redeploying local dryad installation....
set -e
cd /Users/dan/Code/dryad-repo/dspace
/usr/local/bin/mvn clean package -P env-dev
/usr/local/bin/catalina stop -force
cd target/dspace-1.7.3-SNAPSHOT-build.dir/
ant update -Doverwrite=true
/usr/local/bin/catalina start
echo
echo ==== Rebuild Succeeded ====
echo
