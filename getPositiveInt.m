function num = getPositiveInt(prompt)
    %% Function to get a number as input
    while true
        user_input = input(prompt, "s");
        num = str2double(user_input);
        if ~isnan(num) && num > 0 && mod(num,2 == 0) && num <= 10
            break;  % Valid number entered
        else 
            disp('Invalid input. Please enter a positive integer from 1 to 10.');
        end
    end
end