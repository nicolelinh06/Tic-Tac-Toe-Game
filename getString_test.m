% Test cases for getString(prompt)

fprintf('Test 1: Valid single word\n');
fprintf('Expected input: John\n');
str1 = getString('Enter your name: ');
fprintf('Expected output: John\n');
fprintf('Actual output: %s\n\n', str1);

fprintf('Test 2: Valid name with space\n');
fprintf('Expected input: Mary Jane\n');
str2 = getString('Enter your name: ');
fprintf('Expected output: Mary Jane\n');
fprintf('Actual output: %s\n\n', str2);

fprintf('Test 3: Empty input then valid input\n');
fprintf('Expected input: (empty), then Alex\n');
str3 = getString('Enter your name: ');
fprintf('Expected output: Alex\n');
fprintf('Actual output: %s\n\n', str3);

fprintf('Test 4: Input with numbers then valid input\n');
fprintf('Expected input: John123, then Sarah\n');
str4 = getString('Enter your name: ');
fprintf('Expected output: Sarah\n');
fprintf('Actual output: %s\n\n', str4);

fprintf('Test 5: Input with symbols then valid input\n');
fprintf('Expected input: @Mike!, then Mike\n');
str5 = getString('Enter your name: ');
fprintf('Expected output: Mike\n');
fprintf('Actual output: %s\n\n', str5);

fprintf('Test 6: Only numeric input then valid input\n');
fprintf('Expected input: 12345, then Bob\n');
str6 = getString('Enter your name: ');
fprintf('Expected output: Bob\n');
fprintf('Actual output: %s\n\n', str6);

fprintf('Test 7: Input with leading/trailing spaces\n');
fprintf('Expected input:   Alice   \n');
str7 = getString('Enter your name: ');
fprintf('Expected output: Alice\n');
fprintf('Actual output: %s\n\n', str7);

fprintf('End of tests.\n');
