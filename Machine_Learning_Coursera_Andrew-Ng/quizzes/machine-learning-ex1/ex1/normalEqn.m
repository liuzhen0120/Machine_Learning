function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

theta = inv(X'*X) * X' * y;
% fprintf('theta from normal equations is :[%f %f %f]\n',theta(1),theta(2),theta(3));


% -------------------------------------------------------------


% ============================================================

end
