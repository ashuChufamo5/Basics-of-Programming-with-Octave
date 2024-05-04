function root = bisection_method(f, a, b, tolerance, max_iterations)
    if sign(f(a)) == sign(f(b))
        error("Function has the same sign at the interval endpoints. Bisection method cannot guarantee convergence.");
    end

    for iteration = 1:max_iteration
        c = (a + b) / 2;
        fc = f(c);

        if abs(fc) < tolerance
            root = c;
            return;
        end

        if sign(fc) == sign(f(a))
            a = c;
        else
            b = c;
        end
    end

    error("Bisection method did not converge within the specified number of iterations.");
end

f = @(x) x^3 - 2*x - 5;

a = 1;
b = 2;
tolerance = 1e-6;
max_iterations = 100;

root = bisection_method(f, a, b, tolerance, max_iterations);

disp(root);