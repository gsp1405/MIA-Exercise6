function [miu, sigma, pi] = computeParameters(d, w)
% d - intensity image
% w - posterior
% N - number of voxel
% sigma is a sigma square
N = size(d);
pi = sum(w)/N;
miu = sum(w*d)/sum(w);
sigma = sum(w*(d-miu*ones(size(d,1), size(d,2)))^2)/sum(w);
end