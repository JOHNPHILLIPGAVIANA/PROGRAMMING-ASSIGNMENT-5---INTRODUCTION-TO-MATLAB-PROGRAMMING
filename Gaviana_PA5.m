%ECE2112: Advanced Computer Programming and Algorithms
%Experiment 5 - Introduction to Matlab Programming
%Gaviana, John Phillip V.
%3ECE-C

%Problem A: Transpose Operations

R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1] %Defines the Matrix R 

Z = [2+3i -1+4i 5-2i; -3+1i 6 2+5i] %Defines the Matrix Z

%Transpose Operations for Matrix R

%Displays matrix R
disp('Matrix R:');
disp(R); 

R_trans = transpose(R); %Non-conjugate transpose of matrix R using function syntax (swaps rows and columns without complex conjugation)
disp('transpose(R):');
disp(R_trans);

R_apostrophe = R'; %Complex-conjugate transpose of matrix R (swaps rows/columns and equals pure transpose for real numbers)
disp("R':");
disp(R_apostrophe);

R_dot = R.'; %Non-conjugate transpose of matrix R using dot-operator syntax (swaps rows/columns without complex conjugation)
disp("R.':");
disp(R_dot);

%Transpose Operations for Matrix Z

%Displays matrix Z
disp('Matrix Z:');
disp(Z); 

Z_trans = transpose(Z); %Non-conjugate transpose of complex matrix Z using function syntax (swaps rows and columns without changing imaginary parts)
disp('transpose(Z):');
disp(Z_trans);

Z_apostrophe = Z'; %Complex-conjugate transpose of matrix Z (swaps rows/columns and negates the imaginary parts)
disp("Z':");
disp(Z_apostrophe);

Z_dot = Z.'; %Non-conjugate transpose of matrix Z using dot-operator syntax (swaps rows/columns while preserving complex values)
disp("Z.':");
disp(Z_dot);

%% Answers to the Questions for Problem A

% a. Which operations give identical results for the real matrix R?
% Answer: All three transpose operations which includes: transpose(R), R', and R.', produces identical results because matrix R contains only real numbers.

% b. Which two operations give identical results for the complex matrix Z?
% Answer: The two operations that give identical results for complex matrix Z are the transpose(Z) function and the dot-transpose operator Z.'.

% c. Which additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
% Answer: The single apostrophe operator (Z') calculates the complex-conjugate transpose. In addition to swapping rows and columns, it negates the imaginary part (complex conjugate) of each element.

%% Problem B: Two Methods for a Linear System

A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2] %Defines the coefficient matrix A

b = [16; -7; 6; 7] %Defines the right-hand side vector b

%Inverse Method

x_inv = inv(A) * b %Computes x_inv by multiplying the inverse of A by vector b

%Cramer's Rule

det_A = det(A) %Calculates the determinant of the original coefficient matrix A

num_eq = size(b, 1); %Determines the number of equations (rows in vector b) for array size
x_cramer = zeros(num_eq, 1); 

col_idx = 1; %Initializes the column counter for the while loop

%Loops through each column of matrix A to solve for each variable

while col_idx <= num_eq
    A_mod = A;
    A_mod(:, col_idx) = b;
    x_cramer(col_idx) = det(A_mod) / det_A;
    col_idx = col_idx + 1;
end

%Displays the outputs

disp('Solution Vectors for Inverse Method:');
disp(x_inv);

disp('Solution Vectors for Cramer''s Rule:');
disp(x_cramer);

disp('Determinant of A:');
disp(det_A);

disp('Norm Check: norm(x_inv - x_cramer):');
disp(norm(x_inv-x_cramer));

disp('Norm Check: norm(A*x_inv - b):');
disp(norm(A*x_inv-b));