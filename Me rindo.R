library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(GenomeInfoDb)
library(Biostrings)


sec <- readRNAStringSet("first (1).fasta")
sec

ba <- c ("A", "C", "G", "U")
valor <- c (1, 1, 1, 1)
names(valor)<- ba
valor

for(i in sec) {
  A = "A" + i 
  C = "C" + i
  U = "U" + i
  G = "G" + i 
  }
A
C
U
G

i=1
ba <- c ("A", "C", "G", "U")
valor <- c (1, 1, 1, 1)
names(valor)<- ba
valor
for (valor in length(sec)){
  A = "A" + i 
C = "C" + i
U = "U" + i
G = "G" + i }
A
C
U
G

vu <- unique(sec)
vu
i = 1
for (i in length(vu)) {
  m = vu (i)
  nv(i) = lenght (find(seq == vu (i)))
end}
