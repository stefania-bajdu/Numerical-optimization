function [xmin, fmin, nr_iter] = fibonacciSearch(a, b, err, nr_max, f)
    nr_iter = 0;
    Fn = (b - a) / err;
    n = 1;
    while Fib(n) < Fn
        n = n + 1;
    end
    lambda = a + (Fib(n - 2)/Fib(n))*(b - a);
    miu = a + (Fib(n - 1)/Fib(n))*(b - a);
    while abs(b - a) > err && nr_iter + 1 < nr_max
        nr_iter = nr_iter + 1;
        if feval(f, lambda) >= feval(f, miu)
            a = lambda;
            lambda = miu;
            miu = a + (Fib(n - nr_iter - 1)/Fib(n - nr_iter))*(b - a);
        else
            b = miu;
            miu = lambda;
            lambda = a + (Fib(n - nr_iter - 2)/Fib(n - nr_iter))*(b - a);
        end
    end
    xmin = (a + b) / 2;
    fmin = feval(f, xmin);
end
