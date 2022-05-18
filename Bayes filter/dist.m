% Prueba de norm1
% Simulación de distribución normal por 
% Teorema del Límite Central
figure(1)
% Parámetros
mu = 2;
sigma = 4;
% Curva generada por matlab
x = [-20:.1:20];
y = normpdf(x,mu,sigma);
subplot(3,1,1);
plot(x,y)
set(gca,'XTick',[]);
ylabel('p(x)') 
title('Simulación de Normal por TLC')
hold on
% Curva generada por norm1
x = zeros(1000,1);

for i=1:1:1000
    %tic
    x(i) = norm1(mu,sigma);
    %toc
end
histogram(x, 'Normalization','pdf')
hold off


% Prueba de norm2
% Simulación de distribución normal por
% Muestreo con rechazo
subplot(3,1,2);
% Parámetros
mu = 2;
sigma = 4;
% Curva generada por matlab
x = [-20:.1:20];
y = normpdf(x,mu,sigma);
plot(x,y)
xlabel('x') 
ylabel('p(x)') 
title('Simulación de Normal por Rechazo')
set(gca,'XTick',[]);
hold on
% Curva generada por norm2
x = zeros(1000,1);
for i=1:1:1000
    %tic
    x(i) = norm2(mu,sigma);
    %toc
end
histogram(x, 'Normalization','pdf')
hold off


% Prueba de norm3
% Simulación de distribución normal por
% Transformación de Box-Muller
% Tiempo de una muestra: 0.000014 segundos
subplot(3,1,3);
% Parámetros
mu = 2;
sigma = 4;
% Curva generada por matlab
x = [-20:.1:20];
y = normpdf(x,mu,sigma);
plot(x,y)
xlabel('x') 
ylabel('p(x)') 
title('Simulación Normal por Box-Muller')
hold on
% Curva generada por norm3
x = zeros(1000,1);
for i=1:1:1000
    tic
    x(i) = norm3(mu,sigma);
    toc
end
histogram(x, 'Normalization','pdf')

