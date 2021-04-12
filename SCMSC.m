
function [result] = SCMSC(partitionmethod,X,gt,gamma,k)

numclass = size(unique(gt),1);

% run SCMSC
[Sstar] = solveSCMSC(partitionmethod,X,gamma,k);

% Spectral clustering
Aff = (Sstar+Sstar')/2;

label = SpectralClustering(Aff,numclass);
[A, NMI, avgent] = compute_nmi(gt,label);
[F,P,R] = compute_f(gt,label);
[AR,RI,MI,HI] = RandIndex(gt,label);
label = bestMap(gt,label);
ACC = length(find(gt == label))/length(gt);
result = [NMI ACC AR F P R];

