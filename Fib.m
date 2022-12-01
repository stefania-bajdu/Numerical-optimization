function [Fn] = Fib(n)
    if n < 0
        disp("Argument must be a positive integer");
    end
    if n == 0 || n == 1
        Fn = 1;
        return
    elseif n > 0
        Fn = Fib(n - 1) + Fib(n - 2);
        return
    end
end