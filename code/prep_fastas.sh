#!/usr/bin/env bash
set -ex


python3 /opt/CombFold/scripts/prepare_fastas.py ../data/subunits.json --stage pairs --output-fasta-folder ../results/fasta_pairs --max-af-size 1800


python3 /opt/CombFold/scripts/prepare_fastas.py ../data/subunits.json --stage groups --output-fasta-folder ../results/fasta_groups --max-af-size 1800 --input-pairs-results ../results/fasta_pairs