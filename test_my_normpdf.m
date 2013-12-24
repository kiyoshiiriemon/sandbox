
for i=1:10
    X = randn(1);
    mu = randn(1);
    sigma = abs(randn(1));

    Y1 = normpdf(X, mu, sigma);
    Y2 = my_normpdf(X, mu, sigma);
    assert(abs(Y1 - Y2) < 1e-5);
end

X = randn(2, 1);
mu = randn(2, 1);
sigma = abs(randn(1));
Y1 = normpdf(X, mu, sigma);
Y2 = my_normpdf(X, mu, sigma);
assert(norm(Y1 - Y2) < 1e-5);

sigma = abs(randn(2,1));
Y1 = normpdf(X, mu, sigma);
Y2 = my_normpdf(X, mu, sigma);
assert(norm(Y1 - Y2) < 1e-5);

sigma = -0.5;
Y1 = normpdf(X, mu, sigma);
Y2 = my_normpdf(X, mu, sigma);
assert(sum(Y1 == Y2) == 0);
assert(sum(isnan(Y1) - ones(2,1)) == 0);

tic
for i=1:1000
    X = randn(100, 1);
    mu = randn(100, 1);
    sigma = abs(randn(1));

    Y1 = normpdf(X, mu, sigma);
end
toc

tic
for i=1:1000
    X = randn(100, 1);
    mu = randn(100, 1);
    sigma = abs(randn(1));

    Y1 = my_normpdf(X, mu, sigma);
end
toc

