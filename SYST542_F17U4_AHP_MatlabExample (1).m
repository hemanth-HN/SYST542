% Systems 542 - Spring 2016
% Prof. Paulo C.G. Costa
% This script is for checking the calculations I have made by hand
% for the example in slide 54 on the eigenvalue/eigenvector method
% to make an inconsistent matrix into a consistent one.

% Click on "Run and Advance" to follow each part

% I will start by clearing the workspace

clear all
clc

%% Part1 - entering the matrix

A = [1 9 4; 1/9 1 1/5; 1/4 5 1]; % I just entered A manually
fprintf('\nThe original matrix is:\n')
fprintf([repmat(' %0.2f ', 1, 3) '\n'], A')
fprintf('which has a rank of %1.0f.\n',rank(A))
fprintf('A consistent matrix has rank 1\n')

%% Part2 - calculating the eigenvalues and eivenvectors for A

[W, lambda] = eig(A);  
% this command calculates and stores the eigenvectors of A in W and the
% eigenvalues in lambda

fprintf('\nThe eigenvectors of matrix A are:\n')
fprintf([repmat(' %0.4f ', 1, 3) '\n'], W')
fprintf('\nThe eigenvalues of matrix A are:\n')
fprintf([repmat(' %0.4f ', 1, 3) '\n'], lambda')

%% Part3 - Extracting the weigth vector

fprintf('\nSince the largest eigenvalue was 3.0385, we should extract the')
fprintf('\ncorresponding eigenvector, which is the leftmost in matrix W')
fprintf('\nTherefore, our (little) w vector is: \n')
w = W(:,1) % extracts the first column of eigenvector matrix W.

%% Part4 - Normalizing the weight vector

fprintf('\nThe sum of the elements in w is greater than 1, so we must normalize it.\n')
fprintf('The resulting vector w becomes: \n')
w_norm = w / norm(w,1) 
