Docker container for [liftOver](https://hgdownload.soe.ucsc.edu/downloads.html#source_downloads) and the chain file to lift from hg19 to GRCh38

To lift a BED file called `regions.bed` in the current directory, run:

```
docker run -it -v `pwd`:/data -w /data -u `id -u $USER` jmonlong/liftover liftOver regions.bed /home/hg19ToHg38.over.chain.gz regions.lifted.bed regions.notlifted.bed
```
