function [ jVal, gradient ] = costFunction(theta)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
jVal = (theta(1)-5)^2 + (theta(2)-5)^2;

gradient = zeros(2,1);
gradient(1) = 2*(theta(1)-5);
gradient(2) = 2*(theta(2)-5);

end

