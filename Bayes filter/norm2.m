function [ x ] = norm2(mu, sigma)

% Por el método del rechazo 
% Usando la función doble exponencial
c = sqrt(2*exp(1)/pi);

while true
w = rand(1,1);
% Doble exponencial
dx = dexp();
% Densidad normal
dn = exp(-0.5*dx*dx)/sqrt(2*pi);

% Aceptación / Rechazo
if c*w*(0.5*exp(-abs(dx))) <= dn
    x = dx;
    break
end
end
% Transformacion lineal
x = sigma*x + mu;

end

function [dx] = dexp()
    u = rand(1,1);
    if u > 0.5
       dx = -log(2-2*u) ;
    else 
       dx = log(2*u);
    end
    
end
