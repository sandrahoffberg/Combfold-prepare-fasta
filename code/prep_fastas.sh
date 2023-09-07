#!/usr/bin/env bash
set -ex

source ./config.sh

python3 /opt/CombFold/scripts/prepare_fastas.py ${json_file} --stage pairs --output-fasta-folder ../results/fasta_pairs --max-af-size ${max_af_size}