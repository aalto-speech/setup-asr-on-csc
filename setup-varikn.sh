#!/bin/bash
#SBATCH --mem 16G
#SBATCH -c 4
#SBATCH --time 1:00:00
#SBATCH --account project_2006368

source ./setup-env.sh

# Clone:
git clone git@github.com:vsiivola/variKN.git

# Follow basic install
cd variKN
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .

