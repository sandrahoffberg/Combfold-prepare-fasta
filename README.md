[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>

# Create multimer fastas in CombFold

This capsule is the first capsule in the CombFold pipeline, which predicts the structure of large protein complexes starting from the sequences of chains in the complex (up to at least 18,000 amino acids and 32 subunits). The pipeline uses AlphaFold-Multimer or ColabFold ("Streamlit ColabFold All-In-One" capsule) to predict structures of possible subcomplexes which are combinations of subunits from the target complex. The CombFold Combinatorial Assembly algorithm assembles those structures into a single large complex.

The pipeline has 3 stages:

1. Defining subunits in the complex (this capsule)
2. Predicting structures using AlphaFold-Multimer or "Streamlit ColabFold: AlphaFold2 using MMseqs2" capsule 
3. Run the Combinatorial Assembly algorithm on all generated structures. ("CombFold - Combinatorial Assembly" capsule)

## Input

A json file that defines the protein complex.  Naively, each subunit should simply be a complete chain in the complex. In case a chain is long, it is required to cut it into several subunits. This can be done either naively, by dividing the chain into same-length subunits, or by using predictors for functional domains based on sequence. Another option is to predict disordered regions based on sequence(for example using IUPred3) and remove them and split the sequence on these regions.

It must have the following 4 fields:

- name: a unique name for the subunit
- sequence: the amino acid sequence of the subunit
- chain_names: a list of chain names representing also the stoichiometry of the subunit
- start_res: the index of the start residue of the sequence on the chain. Needed to set constraints on other subunits on the same chains.

For example:

```
{
  "name": "AD1",
  "chain_names": ["A", "B"],
  "start_res": 20,
  "sequence": "LTAAAQALDGLGDKFGRSIVDGNAILADVNPRMPQIRRDITGLANLGEVY"
}
```

which defines a subunit named AD1 with 50 amino acids (the sequence length) and that has 2 copies in the complex (chains labeled A and B).

## Output

**fasta_pairs:** A folder with up to ((N+1)*N)/2 .fasta files that can each be used as input for AlphaFold Multimer or ColabFold.

## App Panel Parameters

Input json file
- Input file containing protein subunits. [Default: ../data/subunits.json]

Maximum number of residues
- Maximum number of residues that can be predicted using your prediction environment [Default: 1800]
- CombFold has a maximum of up to at least 18,000 amino acids and 32 subunits

## Cite

Ben Shor, Dina Schneidman-Duhovny. "Predicting structures of large protein assemblies using combinatorial assembly algorithm and AlphaFold2."
https://www.biorxiv.org/content/10.1101/2023.05.16.541003v1

## Source

https://github.com/dina-lab3D/CombFold

Capsule adapted from https://codeocean.com/capsule/8791899/tree/v1

<hr>

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)