#!/bin/bash

allInstances=("dev-default-12110" "dev-default-14508" "dev-default-25635" "dev-default-28578" "dev-default-29902" "dev-default-30598" "dev-default-34553" "dev-default-38173" "dev-default-41296" "dev-default-41846" "dev-default-42357" "dev-default-43400" "dev-default-44326" "dev-default-46357" "dev-default-46887" "dev-default-49980" "dev-default-5698" "dev-default-64349" "dev-default-64445" "dev-default-64712" "dev-default-65312" "dev-default-71841" "dev-default-75875" "dev-default-76147" "dev-default-76590" "dev-default-78993" "dev-default-85770" "dev-default-93123" "dev-default-95882" "dev-default-98095")

allRuntimes=()

for t in ${allInstances[@]}; do
    runtime=$(gcloud compute instances delete  $t )
    allRuntimes+=( $runtime )
done