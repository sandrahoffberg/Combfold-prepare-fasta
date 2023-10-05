#!/usr/bin/env bash
set -ex

source ./config.sh

if [ $json_count -eq 1 ];
then

    python3 /opt/CombFold/scripts/prepare_fastas.py ${json_file} --stage pairs --output-fasta-folder ../results/fasta_pairs --max-af-size ${max_af_size}

else
    echo "This Capsule only accepts 1 json file at a time for a single protein multimer."
fi