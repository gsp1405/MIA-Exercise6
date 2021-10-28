function [miu, sig2, pi] = computeParameters(d, w)
% function computes values of mean (miu), variance (sig2) and probabilities (pi)
% d - intensity image
% w - posterior
% N - number of voxel
N = size(d);
pi = sum(w)/N;
miu = sum(w*d)/sum(w);
sig2 = sum(w*(d-miu*ones(size(d,1), size(d,2)))^2)/sum(w);
end