#!/usr/bin/env bash

set -euo pipefail

IMAGE="$1"

echo "Updating deployment to use image ${IMAGE}"
yq -i '.spec.template.spec.containers[0].image |= "'${IMAGE}'"' deployment/deployment.yaml
echo "Done"
