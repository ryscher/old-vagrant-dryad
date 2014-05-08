#!/bin/sh

# Dependencies:
# empty postgres database exists
# deploy_dryad.sh has been run, so that maven step has completed and files exist in dspace/target and in /opt/dryad

set -e

# Requires .pgpass
export PGHOST={{ dryad.db.host }}
export PGPORT={{ dryad.db.port }}
export PGUSER={{ dryad.db.user }}
export PGDATABASE={{ dryad.db.name }}

cd {{ dryad.repo_path }}/dspace/target/dspace-1.7.3-SNAPSHOT-build.dir/
ant fresh_install

# collection-workflow-changes
# atmire-versioning
# bootstrap
# create_administrator - this works even if terms not set
# 

echo "Installing Dryad SQL customizations"
psql {{ dryad.install_dir }}/etc/postgres/database_change_payment_system.sql
psql {{ dryad.install_dir }}/etc/postgres/database_create_doi_table.sql
psql {{ dryad.install_dir }}/etc/postgres/database_terms_and_condition.sql
psql {{ dryad.install_dir }}/etc/collection-workflow-changes.sql
psql {{ dryad.install_dir }}/etc/atmire-versioning-changes.sql

echo "Creating administrative user"
{{ dryad.install_dir }}/bin/create-administrator

echo "Bootstraping Dryad data"
psql /vagrant/dryad-bootstrap.sql

echo "Updating sequences"
psql {{ dryad.install_dir }}/etc/postgres/update-sequences.sql

