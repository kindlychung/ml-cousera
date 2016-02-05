function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%
% For degree 0, there is  1 way of doing it: 1
% For degree 1, there are 2 ways to do it: x1, x2 
% For degree 2, there are 3 ways to do it: x1^2, x1 x2, x2^2
% ...
% For degree 6, there are 7 ways to do it: x1^6, x1^5 x2, x1^4 x2^2, x1^3 x2^3 ...
degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end
end
