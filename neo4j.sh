#!/bin/bash

docker run --rm \
	-p7474:7474 \
	-p7687:7687 \
	-e NEO4J_AUTH=neo4j/s3cr3t \
	-e NEO4J_apoc_export_file_enabled=true \
	-e NEO4J_apoc_import_file_enabled=true \
	-e NEO4J_apoc_import_file_use__neo4j__config=true \
	-e NEO4JLABS_PLUGINS=\[\"apoc\"\] \
	neo4j:4.4.9-community
