% Test cases for getPositiveInt(prompt)

fprintf('Test 1: Valid positive integer\n');
fprintf('Expected input: 5\n');
num1 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 5\n');
fprintf('Actual output: %d\n\n', num1);

fprintf('Test 2: Zero input then valid input\n');
fprintf('Expected input: 0, then 3\n');
num2 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 3\n');
fprintf('Actual output: %d\n\n', num2);

fprintf('Test 3: Negative input then valid input\n');
fprintf('Expected input: -3, then 3\n');
num3 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 3\n');
fprintf('Actual output: %d\n\n', num3);

fprintf('Test 4: Non-integer input then valid input\n');
fprintf('Expected input: -3.5, then 3\n');
num4 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 3\n');
fprintf('Actual output: %d\n\n', num4);

fprintf('Test 5: Non-numeric input then valid input\n');
fprintf('Expected input: abc, then 4\n');
num5 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 4\n');
fprintf('Actual output: %d\n\n', num5);

fprintf('Test 6: Empty input then valid input\n');
fprintf('Expected input: (empty), then 1\n');
num6 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 1\n');
fprintf('Actual output: %d\n\n', num6);

fprintf('Test 7: Input larger than 9 then valid input\n');
fprintf('Expected input: 10, then 1\n');
num7 = getPositiveInt('Enter a number: ');
fprintf('Expected output: 1\n');
fprintf('Actual output: %d\n\n', num7);

fprintf('End of tests.\n');
