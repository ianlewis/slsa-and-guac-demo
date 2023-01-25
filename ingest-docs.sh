#!/bin/bash

GUACSEC_HOME="$(go env GOPATH)/src/github.com/guacsec"
export GUACSEC_HOME

"${GUACSEC_HOME}"/guac/bin/guacone files --gdbuser neo4j --gdbpass s3cr3t ./docs/cyclonedx
