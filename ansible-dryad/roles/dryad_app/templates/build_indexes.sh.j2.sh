#!/bin/sh

# Commands to update solr indexes from Dryad data (after database load)
# Adapted from http://wiki.datadryad.org/Installation_Checklist_for_Production_Upgrade

{{ dryad.install_dir }}/bin/dspace dsrun com.atmire.authority.IndexClient
{{ dryad.install_dir }}/bin/dspace update-discovery-index -f
