x = 10;
y = 3;

% Basic math operations:
add = x+y;  % Addition
sub = x-y;  % Subtraction
mul = x*y;  % Multiplication
div = x/y;  % Division
pow = x^y;  % Exponentiation

disp("Results of basic math operations:");
disp("Addition (x + y): " + add);
disp("Subtraction (x - y): " + sub);    
disp("Multiplication (x * y): " + mul);
disp("Division (x / y): " + div);
disp("Exponentiation (x ^ y): " + pow);
disp(" ")

% Task 1: Compute the following expressions and display the results. Discuss how the order of operations affects the results.
% (a + b)  c
% a ^ c + b / c
% b - (a  c) / (b + c)

a = 10;
b = 20;
c = 5;

result = (a+b)*c; 
result2 = a^c + b/c;
result3 = b-(a*c)/(b+c);

disp("Result of the first expression (a + b) * c is: "+ result);
disp("Result of the second expression a ^ c + b / c is: "+ result2);
disp("Result of the third expression b - (a * c) / (b + c) is: "+ result3);