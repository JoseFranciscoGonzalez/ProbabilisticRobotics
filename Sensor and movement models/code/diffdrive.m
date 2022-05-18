function [x_n, y_n, theta_n] = diffdrive(x, y, theta, v_l, v_r, t, l)
% Cinematica directa del accionamiento diferencial
% 
% x, y: Coordenadas iniciales en metros
% theta: Orientacion inicial en radianes
% v_l, v_r: velocidad rueda izquierda y derecha en metros por segundo
% t: tiempo de movimiento
% l: longitud entre ruedas
% [x_n, y_n, theta_n]: Coordenadas y orientaci�n finales

% si el centro de curvatura est� bien definido
if v_l ~= v_r
    % velocidad angular
    w = (v_r - v_l)/l;
    % angulo de rotaci�n
    phi = w*t;
    % radio del centro instant�neo de rotaci�n
    R = (l*(v_l+v_r)/(2*(v_r-v_l)));
    % Matriz de rotaci�n
    Rotacion = [cos(phi) -sin(phi) 0; sin(phi) cos(phi) 0; 0 0 1];
    % Vector del centro de rotaci�n a la posici�n inicial
    Vector = [R*sin(theta); -R*cos(theta); theta];
    % Coordenadas del centro de rotaci�n
    Desplazamiento = [x-R*sin(theta); y + R*cos(theta); phi];

    % Rotaci�n y desplazamiento
    Resultado = (Rotacion*Vector + Desplazamiento);
    x_n = Resultado(1);
    y_n = Resultado(2);
    theta_n = Resultado(3);
% si el movimiento es recto
else
    % velocidad del centro de masa
    v = (v_r+v_l)/2;
    x_n = x + v*t*cos(theta);
    y_n = y + v*t*sin(theta);
    theta_n = theta;
    
end
end
