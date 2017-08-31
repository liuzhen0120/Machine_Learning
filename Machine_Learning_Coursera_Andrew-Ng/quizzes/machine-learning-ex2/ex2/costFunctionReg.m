function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta); % hypothesis function;
% something wrong about following code to compute theta without
% regularizing theta(1);because this method is for linear regression model to compute the theta value
% =======================
% L = eye(size(theta,1));
% L(1) = 0;
% theta = (X'*X + lambda * L)' * X' *y;
% =======================
% grad_1 = X' * (h-y) ./ m;
% grad = X' * (h-y) ./ m + theta * lambda / m;
% grad(1) = grad_1(1);
% theta(1) = 0;

% another edition
theta(1) = 0;
grad = X' * (h-y) ./ m + theta * lambda / m;
J = (dot(-y, log(h)) - dot((1-y),log(1-h))) / m + lambda / (2 * m) * (sum(theta .^ 2)); % cost function value;





% =============================================================

end
