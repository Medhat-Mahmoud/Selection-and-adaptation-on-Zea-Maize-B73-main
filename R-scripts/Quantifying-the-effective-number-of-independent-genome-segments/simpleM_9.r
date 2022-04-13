
##rspt##

rm(list=ls())
memory.limit(size=50000000)
load("SNP.RData")
source("Meff_PCA.R")
source("inferCutoff.R")
PCA_cutoff <- 0.995

SNP <- SNP[SNP$Chromosome==9,]



geno.t <- t(SNP[,-c(1:3)])
geno.df <- data.frame(geno.t)
colnames(geno.df) <- as.character(unlist(SNP[,1]))
g <- cbind(rownames(geno.df), geno.df)
colnames(g)[1] <- c("X")
g$X <- as.character(g$X)

g <- g[,-1]

maf <- ifelse(colMeans(g)/2>0.5,1-colMeans(g)/2,colMeans(g)/2)

geno_filtered <- g[, which(maf > 0.05 )]

mySNP_nonmissing <- t(geno_filtered)

numLoci <- length(mySNP_nonmissing[, 1])

simpleMeff <- NULL
fixLength <- 100000 
i <- 1
myStart <- 1
myStop <- 1
while(myStop < numLoci){
  myDiff <- numLoci - myStop 
  if(myDiff <= fixLength) break
  
  myStop <- myStart + i*fixLength - 1
  snpInBlk <- t(mySNP_nonmissing[myStart:myStop, ])
  MeffBlk <- inferCutoff(snpInBlk)
  simpleMeff <- c(simpleMeff, MeffBlk)
  myStart <- myStop+1
}
snpInBlk <- mySNP_nonmissing[myStart:numLoci, ]
MeffBlk <- inferCutoff(snpInBlk)
simpleMeff <- c(simpleMeff, MeffBlk)


simpleM_9 <- sum(simpleMeff)

save(simpleM_9 , file = "simpleM_9.RData")

