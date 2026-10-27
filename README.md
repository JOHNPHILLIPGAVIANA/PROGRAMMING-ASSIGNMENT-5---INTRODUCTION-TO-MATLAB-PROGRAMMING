# PROGRAMMING-ASSIGNMENT-5---INTRODUCTION-TO-MATLAB-PROGRAMMING
## Gaviana, John Phillip V.
## 2ECE-A
This repository contains the Python program and readme file for Programming Assignment 5 - Introduction to MATLAB Programming. 

# A. Transpose Operations
## MATLAB Program and Explanation
```matlab
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

% Answers to the Questions for Problem A

% a. Which operations give identical results for the real matrix R?
% Answer: All three transpose operations which includes: transpose(R), R', and R.', produces identical results because matrix R contains only real numbers.

% b. Which two operations give identical results for the complex matrix Z?
% Answer: The two operations that give identical results for complex matrix Z are the transpose(Z) function and the dot-transpose operator Z.'.

% c. Which additional operation is performed by the apostrophe operator ' when the matrix contains complex entries.
% Answer: The single apostrophe operator (Z') calculates the complex-conjugate transpose. In addition to swapping rows and columns, it negates the imaginary part (complex conjugate) of each element.
```
### 1. Function Syntax Transpose (`transpose()`)
**Purpose:** This function executes a standard non-conjugate transpose on a matrix. Calling `transpose(R)` or `transpose(Z)` reorders the matrix entries by interchanging row and column indices without altering any numerical values or modifying complex components.

### 2. Complex-Conjugate Transpose Operator (`'`)
**Purpose:** This operator performs a Hermitian (complex-conjugate) transpose. Calling `R'` or `Z'` swaps the rows and columns and simultaneously negates the imaginary component of every complex entry. For real matrix `R`, it produces results identical to a non-conjugate transpose because real numbers have no imaginary parts to conjugate.

### 3. Dot-Operator Transpose (`.'`)
**Purpose:** This operator executes an explicit non-conjugate transpose using operator syntax. Calling `R.'` or `Z.'` swaps the matrix rows and columns while preserving the exact original real and complex values of every entry.

## Answers for the Questions in Problem A
### A. Which operations give identical results for the real matrix R?
**Answer:** All three transpose operations which includes: `transpose(R)`, `R'`, and `R.'`, produces identical results because matrix R contains only real numbers.

### B. Which two operations give identical results for the complex matrix Z?
**Answer:** The two operations that give identical results for complex matrix Z are the `transpose(Z)` function and the dot-transpose operator `Z.'`.

### C. Which additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
**Answer:** The single apostrophe operator (`Z'`) calculates the complex-conjugate transpose. In addition to swapping rows and columns, it negates the imaginary part (complex conjugate) of each element.

# B. Two Methods for a Linear System
## MATLAB Program and Explanation
```matlab
% Problem B: Two Methods for a Linear System

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
```
### 1. Matrix Initialization & Linear System Setup (matrix definition)
**Purpose:** This defines the coefficient matrix `A` and right-hand side column vector `b` for the system of linear equations. Setting `A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]` and `b = [16; -7; 6; 7]` structures the simultaneous equations into matrix-vector form $Ax = b$, preparing the system for solution via MATLAB matrix operations.

### 2. Matrix Inverse Method (`inv(A) * b`)
**Purpose:** This method solves the linear system directly using matrix inversion arithmetic. The expression `x_inv = inv(A) * b` computes the inverse matrix $A^{-1}$ and multiplies it by vector `b` to yield the exact solution vector `x_inv`.

### 3. Cramer's Rule via While Loop (`det()` & column substitution)
**Purpose:** This evaluates the linear system using Cramer's Rule through iterative column replacement. The expression `det_A = det(A)` calculates the determinant of matrix `A`, while the `while` loop substitutes vector `b` into each column of `A` sequentially (`A_mod(:, col_idx) = b`) to solve for each variable using `det(A_mod) / det_A` and stores the resulting solution in `x_cramer`.

### 4. Solution Verification & Error Norm Analysis (`norm()`)
**Purpose:** This displays all calculated solution vectors and checks their mathematical accuracy. Calling `norm(x_inv - x_cramer)` computes the Euclidean distance between the two output vectors to verify equivalence, while `norm(A*x_inv - b)` calculates the residual error norm to ensure the solution satisfies the linear system.
























