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
```




























