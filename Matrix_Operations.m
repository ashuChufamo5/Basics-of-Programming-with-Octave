function result = matrix_multiply(matrix1, matrix2)
    [m, n] = size(matrix1);
    [p, q] = size(matrix2);

    if n ~= p
        error("Matrix dimensions are not compatible for multiplication");
    end

    result = zeros(m, q);

    for i = 1:m
        for j = 1:q
            for k = 1:n
                result(i, j) = result(i, j) + matrix1(i, k) * matrix2(k, j);
            end
        end
    end
end

matrix1 = [1, 2, 3; 4, 5, 6];
matrix2 = [7, 8; 9, 10; 11, 12];

result = matrix_multiply(matrix1, matrix2);

disp(result);
