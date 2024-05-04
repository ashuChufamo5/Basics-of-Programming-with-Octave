function is_palindrome = check_palindrome(str)
    str = lower(str); 
    str = strrep(str, ' ', '');  

    n = length(str);
    is_palindrome = true;

    for i = 1:fix(n/2)
        if str(i) ~= str(n-i+1)
            is_palindrome = false;
            break;
        end
    end
end

function is_palindrome = check_palindrome(str)
    str = lower(str);  
    str = strrep(str, ' ', '');  

    n = length(str);
    is_palindrome = true;

    for i = 1:fix(n/2)
        if str(i) ~= str(n-i+1)
            is_palindrome = false;
            break;
        end
    end
end