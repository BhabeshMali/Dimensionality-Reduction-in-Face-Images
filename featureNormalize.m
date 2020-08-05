function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. 

mu = mean(X);
X_norm = bsxfun(@minus, X, mu); % X-mean(X) operation is running

sigma = std(X_norm); % std represents stanidard deviations and sigma is the standard deviation of the X_norm.
X_norm = bsxfun(@rdivide, X_norm, sigma); % X_norm/std(X_norm)


% ============================================================

end
