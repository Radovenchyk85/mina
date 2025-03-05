#!/bin/bash

CODENAME=$1
GS_DO_NOT_OVERRIDE=1

. ./buildkite/scripts/storage/env.sh

echo "--- Copy debians to gs"
for entry in ${STORAGE_FOLDER}/*.deb; do
  source ./buildkite/scripts/cache-artifact.sh $entry ${CODENAME}/$entry 
done 
