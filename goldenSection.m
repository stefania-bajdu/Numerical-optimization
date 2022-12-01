function [xmin, fmin, nr_iter] = goldenSection(a, b, err, alpha, nr_max, f)
    lambda = a + (1 - alpha)*(b - a);
    miu = a + alpha*(b - a);
    nr_iter = 0;
    while abs(b - a) > err && nr_iter + 1 < nr_max 
        nr_iter = nr_iter + 1;
        if feval(f, lambda) >= feval(f, miu)
            a = lambda;
            lambda = miu;
            miu = a + alpha*(b - a);
        else
            b = miu;
            miu = lambda;
            lambda = a + (1 - alpha)*(b - a);
        end
    end
    xmin = (a + b) / 2;
    fmin = feval(f, xmin); 
end