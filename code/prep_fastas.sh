#!/usr/bin/env bash
set -ex


python3 /opt/CombFold/scripts/prepare_fastas.py ../data/subunits.json --stage pairs --output-fasta-folder ../results/fasta_pairs --max-af-size 1800