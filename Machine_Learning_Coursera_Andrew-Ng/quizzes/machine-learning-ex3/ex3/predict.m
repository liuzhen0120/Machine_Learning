function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m,1) X];      % 5000 x 401

A1 = sigmoid(X * Theta1');   % 5000 x 25
A1 = [ones(m,1) A1];  % 5000 x 26
A2 = sigmoid(A1 * Theta2');  % 5000 x 10
[M, I] = max(A2, [], 2);  % M is the largest number of each row, I is the M's column index.
% I(I==10) = 0;
p = I;

% DON'T FORGET THE SIGMOID FUNCTION BEFORE TRANSPORT.

% =========================================================================


end
