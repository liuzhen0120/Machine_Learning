function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);  % 3,number of centroids

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);  % 300 x 1

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
m = size(X,1);  % number of examples: 300
for i = 1:m,
    x_temp = X(i,:);
    result = [];
    for j = 1:K,
        c_temp = centroids(j,:);
        c_result = norm(x_temp - c_temp);
        result = [result;c_result,j];
    end
    [c_min, c_min_index] = min(result,[],1);
    idx(i,:) = c_min_index(1);
end


% another solution
% for i = 1:length(idx)
%     distance = zeros(K,1);
%     for j = 1:K
%         distance(j) = sum(sum(X(i,:) - centroids(j,:) .^ 2));
%     end
%     [value, idx(i)] = min(distance);
% end



% =============================================================

end

