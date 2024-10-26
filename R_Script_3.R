# Two alloys A and B are being used to manufacture a certain steel product. An experiment
# needs to be designed to compare the two in terms of maximum load capacity in tons (the
# maximum weight that can be tolerated without breaking). It is known that the two standard
# deviations in load capacity are equal at 5 tons each. An experiment is conducted in which 30
# specimens of each alloy (A and B) are tested and the results recorded as follows: Sample
# Mean for A xA = 49.5, Sample Mean for xB = 45.5, The manufacturers of alloy A are
# convinced that this evidence shows conclusively that μA > μB and strongly supports the
# claim that their alloy is superior. Manufacturers of alloy B claim that the experiment could
# easily have given xA − xB = 4 even if both the population means are equal. In other
# words, “the results are inconclusive!
# (a) Compute P(xA − xB > 4 |μA = μB).
# (b) Construct a 95% confidence interval for the difference of means.
# (c) Use R to re-do the above parts.

# (a) Compute P(xA − xB > 4 |μA = μB).
n<-30
s<-5
xA<-49.5
xB<-45.5
muA<-xA
muB<-xB
mu0<-0
alpha<-0.05
z<-qnorm(1-alpha/2)
xbar<-xA-xB
se<-sqrt(2*s^2/n)
zstar<-(xbar-mu0)/se
pval<-pnorm(zstar,lower.tail=F)
pval
# [1] 0.000117
# (b) Construct a 95% confidence interval for the difference of means.
ci<-xbar+z*se*[-1,1]
ci

