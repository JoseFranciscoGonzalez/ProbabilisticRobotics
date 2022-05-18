function [ x ] = norm3( mu, sigma )
% Por transformación de Box Muller
u = rand(1,1);
w = rand(1,1);
x = cos(2*pi*u)*sqrt(-2*log(w));
x = sigma*x + mu;
end

