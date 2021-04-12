%-------------------------------------------------------------
% Sparse Correlation based Multi-view Spectral Clustering.
%-------------------------------------------------------------
% Copyright @ Wenhua Dong, 2021
%-------------------------------------------------------------

clc; clear all; close all;
addpath('./clusteringmeasures');
addpath('./dataset');
% PartitionMethod
partitionmethod = 'SCMSC';
% partitionmethod = 'USCMSC';

%%-------------------------------------------------------------
fprintf('Run Yale:\n');
load('yale_mtv');
gamma = 0.3;
k = 125;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_Yale = mean(result)
std_Yale = std(result)
clear gamma k X gt numrep result mean_Yale std_Yale

% %%-------------------------------------------------------------
fprintf('Run UCI Digit:\n');
load('uci-digit');
gamma = 10;
k = 70;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_uci_digit = mean(result)
std_uci_digit = std(result)
clear gamma k X gt numrep result mean_uci_digit std_uci_digit

%%-------------------------------------------------------------
fprintf('Run 3-sources:\n');
load('3-sources');
gamma = 1;
k = 10;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_3_sources = mean(result)
std_3_sources = std(result)
clear gamma k X gt numrep result mean_3_sources std_3_sources

%%-------------------------------------------------------------
fprintf('Run Caltech101_7:\n');
load('Caltech101-7');
gamma = 10;
k = 70;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_Caltech101_7 = mean(result)
std_Caltech101_7 = std(result)
clear gamma k X gt numrep result mean_Caltech101_7 std_Caltech101_7 

%%-------------------------------------------------------------
fprintf('Run MSRC_V1:\n');
load('MSRC-V1');
gamma = 2;
k = 50;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_MSRC_V1 = mean(result)
std_MSRC_V1 = std(result)
clear gamma k X gt numrep result mean_MSRC_V1 std_MSRC_V1
  
%%-------------------------------------------------------------
fprintf('Run BBCSport_2view:\n');
load('bbcsport_2view');
gamma = 2;
k = 10;
for numrep = 1:30
    result(numrep,:) = SCMSC(partitionmethod,X,gt,gamma,k);
end
mean_BBCSport = mean(result)
std_BBCSport = std(result)
clear gamma k X gt numrep result mean_BBCSport std_BBCSport
