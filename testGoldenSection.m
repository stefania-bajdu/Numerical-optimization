function [] = testGoldenSection()
a = -4;
b = 4;
f = @(x) (x.^4 - 14*x.^3 + 60*x.^2 - 70*x);
alpha = (-1 + sqrt(5)) / 2;
err = 0.1;
nr_max = 18;
[xmin, fmin, iter] = goldenSection(a, b, err, alpha, nr_max, f);
end

