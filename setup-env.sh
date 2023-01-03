module purge
export USER_SPACK_ROOT="/projappl/project_2006368/spack_root/"
module load spack
source <(spack load --sh autoconf@2.69%gcc@11.3.0)
source <(spack load --sh automake@1.16.5%gcc@11.3.0)

# For the "patch" sourcing below to work, probably need to run 
# something like the following once:
#module purge
#export USER_SPACK_ROOT="/projappl/project_2006368/spack_root/"
#module load spack
#spack install --reuse patch

source <(spack load --sh patch@2.7.6%gcc@11.3.0)
module load gcc/11.3.0 cuda/11.7.0
module load git
module load python-data
module load subversion

