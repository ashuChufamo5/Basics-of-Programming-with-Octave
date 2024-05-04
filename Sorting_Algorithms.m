function sorted_array = bubble_sort(array)
    n = length(array);
    sorted_array = array;

    for i = 1:n-1
        for j = 1:n-i
            if sorted_array(j) > sorted_array(j+1)
                % Swap elements
                temp = sorted_array(j);
                sorted_array(j) = sorted_array(j+1);
                sorted_array(j+1) = temp;
            end
        end
    end
end

function sorted_array = merge_sort(array)
    n = length(array);

    if n <= 1
        sorted_array = array;
        return;
    end

    mid = fix(n / 2);
    left = merge_sort(array(1:mid));
    right = merge_sort(array(mid+1:end));

    sorted_array = merge(left, right);
end

function merged_array = merge(left, right)
    n1 = length(left);
    n2 = length(right);
    merged_array = zeros(1, n1 + n2);

    i = 1;
    j = 1;
    k = 1;

    while i <= n1 && j <= n2
        if left(i) <= right(j)
            merged_array(k) = left(i);
            i = i + 1;
        else
            merged_array(k) = right(j);
            j = j + 1;
        end
        k = k + 1;
    end

    while i <= n1
        merged_array(k) = left(i);
        i = i + 1;
        k = k + 1;
    end

    while j <= n2
        merged_array(k) = right(j);
        j = j + 1;
        k = k + 1;
    end
end

function sorted_array = quicksort(array)
    n = length(array);

    if n <= 1
        sorted_array = array;
        return;
    end

    % Choose a pivot element
    pivot_index = fix(n / 2);
    pivot = array(pivot_index);

    % Partition the array around the pivot
    less = [];
    equal = [];
    greater = [];

    for i = 1:n
        if array(i) < pivot
            less = [less, array(i)];
        elseif array(i) > pivot
            greater = [greater, array(i)];
        else
            equal = [equal, array(i)];
        end
    end

    % Recursively sort the partitions
    sorted_less = quicksort(less);
    sorted_greater = quicksort(greater);

    % Concatenate the sorted partitions
    sorted_array = [sorted_less, equal, sorted_greater];
end

array = [9, 4, 7, 2, 1, 5, 8, 3, 6];
disp("Original array:");
disp(array);

% Bubble Sort
sorted_array = bubble_sort(array);
disp("Sorted array (Bubble Sort):");
disp(sorted_array);

% Merge Sort
sorted_array = merge_sort(array);
disp("Sorted array (Merge Sort):");
disp(sorted_array);

% Quicksort
sorted_array = quicksort(array);
disp("Sorted array (Quicksort):");
disp(sorted_array);