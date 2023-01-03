#!/bin/bash

#SBATCH --mem 16G
#SBATCH -c 8
#SBATCH --time 1:00:00
#SBATCH --account project_2006368

source ./setup-env.sh

# Clone:
git clone https://github.com/kaldi-asr/kaldi.git ./kaldi-trunk 

# Make tools:
cd kaldi-trunk/tools
extras/install_openblas.sh
extras/check_dependencies.sh
make -j8

# Make the main library:
cd ../src
./configure \
  --mathlib=OPENBLAS \
  --cudatk-dir=$CUDA_INSTALL_ROOT
  
