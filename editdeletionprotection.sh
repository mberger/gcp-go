#!/bin/bash

allInstances=("application-default-12951")

allRuntimes=()

for t in ${allInstances[@]}; do
    runtime=$(gcloud compute instances update $t --no-deletion-protection)
    allRuntimes+=( $runtime )
done