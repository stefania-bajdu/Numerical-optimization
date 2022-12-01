%% Script testare Metoda Sectiunii de Aur
a = 0;
b = 2;
f = @(x) (x.^4 - 14*x.^3 + 60*x.^2 - 70*x);
alpha = (-1 + sqrt(5)) / 2;
err = 0.3;
nr_max = 15;
[xmin, fmin, iter] = goldenSection(a, b, err, alpha, nr_max, f);

%%
test = @() testGoldenSection();
timeit(test)

%% Script testare Metoda de cautare dihotomica
a = 0;
b = 1;
f = @(x) (x.^2 - 1.5*x);
err = 0.1;
delta = 0.01;
nr_max = 11;
[xmin, fmin, iter] = dihotomicSearch(a, b, err, delta, nr_max, f);

%% Script testare Metoda Fibonacci
a = 0;
b = 2;
f = @(x) (x.^4 - 14*x.^3 + 60*x.^2 - 70*x);
err = 0.3;
nr_max = 15;
[xmin, fmin, iter] = fibonacciSearch(a, b, err, nr_max, f);



