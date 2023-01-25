#!/bin/bash

syft -o spdx-json ianmlewis/slsa-and-guac-demo:0.0.1 >docs/spdx/syft-spdx-docker.io-ianmlewis-slsa-and-guac-demo:0.0.1.json
syft -o spdx-json ianmlewis/slsa-and-guac-demo:1.0.0 >docs/spdx/syft-spdx-docker.io-ianmlewis-slsa-and-guac-demo:1.0.0.json

cosign download attestation ianmlewis/slsa-and-guac-demo:0.0.1 | jq -r '.payload' | base64 -d | jq >docs/slsa/slsa-docker.io-ianmlewis-slsa-and-guac-demo:0.0.1.json
cosign download attestation ianmlewis/slsa-and-guac-demo:1.0.0 | jq -r '.payload' | base64 -d | jq >docs/slsa/slsa-docker.io-ianmlewis-slsa-and-guac-demo:1.0.0.json
