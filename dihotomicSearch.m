function [xmin, fmin, nr_iter] = dihotomicSearch(a, b, err, delta, nr_max, f)
    nr_iter = 0;
    while abs(b - a) > err && nr_iter + 1 < nr_max
        nr_iter = nr_iter + 1;
        lambda = (a + b)/2 - delta;
        miu = (a + b)/2 + delta;
        if feval(f, lambda) >= feval(f, miu)
            a = lambda;
        else
            b = miu;
        end
    end
    xmin = (a + b) / 2;
    fmin = feval(f, xmin);
end