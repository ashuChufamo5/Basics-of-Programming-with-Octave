function index = binary_search(array, target)
    left = 1;
    right = length(array);

    while left <= right
        mid = fix((left + right) / 2);

        if array(mid) == target
            index = mid;
            return;
        elseif array(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end

    index = -1;
end

array = [1, 3, 5, 7, 9, 11, 13];
target = 7;

index = binary_search(array, target);

if index ~= -1
    disp("Element found at index:");
    disp(index);
else
    disp("Element not found in the array.");
end