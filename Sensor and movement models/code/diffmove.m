clear all;


% Instrucci�n 1 -
figure(1)
% Velocidad rueda izquierda y derecha
v_l = 0.1;
v_r = 0.5;
% Tiempo del movimiento
t = 2;
% Distancia entre ruedas
l = 0.5;
% Posici�n absoluta
x_i = 1.5;
y_i = 2;
% Orientaci�n
theta_i = pi/3;
% Gr�fico del movimiento
[x_i, y_i, theta_i] = driveplot(x_i, y_i, theta_i, v_l, v_r, t, l, false)

% Instrucci�n 2 -
%figure(2)
% Nuevas velocidades
v_l = 0.5;
v_r = 0.1;
t = 2;
l = 0.5;
% Se usa la posici�n final anterior
[x_i, y_i, theta_i] = driveplot(x_i, y_i, theta_i, v_l, v_r, t, l, false)

% Instrucci�n 3 -
%figure(3)
% Nuevas velocidades
v_l = 0.2;
v_r = -0.2;
t = 2;
l = 0.5;
[x_i, y_i, theta_i] = driveplot(x_i, y_i, theta_i, v_l, v_r, t, l, false)

% Instrucci�n 4 -
%figure(4)
% Nuevas velocidades
v_l = 0.1;
v_r = 0.6;
% Nuevo tiempo
t = 6;
l = 0.5;
[x_i, y_i, theta_i] = driveplot(x_i, y_i, theta_i, v_l, v_r, t, l, false)

% Instrucci�n 5 -
%figure(5)
% Nuevas velocidades
v_l = 0.4;
v_r = 0.4;
% Nuevo tiempo
t = 2;
l = 0.5;
[x_i, y_i, theta_i] = driveplot(x_i, y_i, theta_i, v_l, v_r, t, l, false)

return

 