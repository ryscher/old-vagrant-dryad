#!/bin/sh

mvn install:install-file -Dfile=discovery-solr-provider-0.9.4-SNAPSHOT.jar  -DgroupId=org.dspace.discovery -DartifactId=discovery-solr-provider -Dversion=0.9.4-SNAPSHOT -Dpackaging=jar
mvn install:install-file -Dfile=dspace-solr-solrj-1.4.0.1-SNAPSHOT.jar  -DgroupId=org.dspace.dependencies.solr -DartifactId=dspace-solr-solrj -Dversion=1.4.0.1-SNAPSHOT -Dpackaging=jar
mvn install:install-file -Dfile=discovery-xmlui-block-0.9.4-SNAPSHOT.jar  -DgroupId=org.dspace.discovery -DartifactId=discovery-xmlui-block -Dversion=0.9.4-SNAPSHOT -Dpackaging=jar
