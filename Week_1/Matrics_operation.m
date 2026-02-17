Project_path = 'E:\Matlab\Week_1';  % Define the project path
cd(Project_path);  % Change the current directory to the project path

A = [1 2 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];

C = A + B;
D =A-B;
E = A*B;

disp("Result of matrix addition (A + B):");
disp(C);

disp("Result of matrix subtraction (A - B):");
disp(D);

disp("Result of matrix multiplication (A * B):");
disp(E);

% Matrics Operation

det_A = det(A); % Calculate the determinant of matrix A
inv_A = inv(A); % Calculate the inverse of matrix A
trans_A = A';   % Calculate the transpose of matrix A
eig_A = eig(A); % Calculate the eigenvalues of matrix A

disp("Determinant of matrix A:");
disp(det_A);

disp("Inverse of matrix A:");
disp(inv_A);

disp("Transpose of matrix A:");
disp(trans_A);

disp("Eigenvalues of matrix A:");
disp(eig_A);

