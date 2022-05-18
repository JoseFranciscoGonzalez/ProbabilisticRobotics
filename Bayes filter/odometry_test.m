x = zeros(5000,1);
% Valores de prueba
p = [2;4;0];
u = [pi/2; 0;1];
a = [0.1;0.1;0.01;0.01];
% Generamos 5000 muestras
for i=1:1:5000
    %tic
    [x,y,theta] = odometry(p,u,a);
    %toc
    plot(x, y, '+', 'Color', 'blue')
    hold on
end
xlabel('x') 
ylabel('y') 
title('Modelo de movimiento basado en odometría')

    