function [output] = flip_it(M)
% reverse a vector without using built-in function
output = M(end:-1:1);
end