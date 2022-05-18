function [ u ] = norm1( mu, sigma )
% Por teorema del límite central

u = 0;
for i=1:1:12
    u = u + rand(1,1);
end

% Restar media de uniformes
u = u - 12*0.5;
% Tranformacion lineal
u = u*sigma + mu;

end

