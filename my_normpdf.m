function [ Y ] = my_normpdf( X, mu, sigma )
% normpdf
if sigma <= 0
    Y = NaN;
    return;
end


Y = exp(-(X-mu).*(X-mu)./(2*sigma.*sigma)) ./ (sigma*sqrt(2*pi));


end

