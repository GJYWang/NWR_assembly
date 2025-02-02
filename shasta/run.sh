localDir='/scratch/local2'
sampleProcessWD=$(pwd)

mkdir -p $localDir

cd $localDir
shasta-Linux --input ./Angalifu/*.fastq --memoryMode filesystem --memoryBacking 2M –threads 90

