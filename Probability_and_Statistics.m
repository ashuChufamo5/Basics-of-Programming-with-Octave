function mean_value = calculate_mean(dataset)
    n = length(dataset);
    total_sum = sum(dataset);
    mean_value = total_sum / n;
end

function median_value = calculate_median(dataset)
    sorted_dataset = sort(dataset);
    n = length(sorted_dataset);
    
    if mod(n, 2) == 1
        median_index = fix(n / 2) + 1;
        median_value = sorted_dataset(median_index);
    else
        median_index1 = n / 2;
        median_index2 = median_index1 + 1;
        median_value = (sorted_dataset(median_index1) + sorted_dataset(median_index2)) / 2;
    end
end


function mode_values = calculate_mode(dataset)
    unique_values = unique(dataset);
    counts = histc(dataset, unique_values);
    max_count = max(counts);
    mode_values = unique_values(counts == max_count);
end

dataset = [2, 4, 6, 4, 8, 5, 2, 4];
mean_value = calculate_mean(dataset);
median_value = calculate_median(dataset);
mode_values = calculate_mode(dataset);

disp("Mean: " + mean_value);
disp("Median: " + median_value);
disp("Mode: " + mode_values);