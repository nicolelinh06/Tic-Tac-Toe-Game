
function result = getString(prompt)
    %% Function to get a string from the user
    while true
        user_input = input(prompt, "s");
        
        % Check if input is non-empty and only alphabetic character
        if ~isempty(user_input) && all(isstrprop(user_input, 'alpha') | isspace(user_input))
            result = user_input;
            break;  % Exit the loop if input is valid
        else
            disp("Please enter a valid string using letters only.") 
        end
    end
end