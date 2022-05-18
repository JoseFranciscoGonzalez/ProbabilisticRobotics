% Carga de medic�n
laserscan = load('-ascii', 'laserscan.dat');
% C�mputo de �ngulos por separaci�n angular constante
angle = linspace(-pi/2,pi/2, size(laserscan,2));
% Conversi�n a cartesianas
[x,y] = pol2cart(angle,laserscan);

% Figura 1 - Medici�n respecto de la terna del LIDAR 
figure(1)
axis equal
% Grafico como vectores desde el sensor hasta el limite detectado
for i = 1:1:size(laserscan,2)
    %line([0,x(i)], [0,y(i)])
    plot(x(i), y(i), '+','Color', 'blue')
    hold on
end
% Posici�n del sensor
plot(0,0,'o','Color', 'red')
hold off

% Figura 2 - Medici�n respecto del robot
% Posici�n relativa del LIDAR
figure(2)
lidar_angle = pi;
lidar_x = 0.2;
lidar_y = 0;
% Matriz de transformaci�n del marco LIDAR al marco del Robot
T_lidar_robot = [cos(lidar_angle) -sin(lidar_angle) 0.2; sin(lidar_angle) cos(lidar_angle) 0; lidar_x lidar_y 1];
% Vector a transformar
lidar_vector = [x; y; ones(size(x))];

for i = 1:1:size(laserscan,2)
    v_r = T_lidar_robot * lidar_vector(:,i);
    plot(v_r(1), v_r(2), '+','Color', 'blue')
    hold on
end
% Posici�n del LIDAR
plot(0.2,0,'o','Color', 'red')
hold off

% Figura 3 - Medici�n respecto de la terna global
figure(3)
% Posici�n absoluta del robot
robot_angle = -pi/4;
robot_x = 5;
robot_y = -7;
% Matriz de transformaci�n del marco robot al marco global
T_robot_global = [cos(robot_angle) -sin(robot_angle) robot_x; sin(robot_angle) cos(robot_angle) robot_y; 0 0 1];

for i = 1:1:size(laserscan,2)
    % Doble composici�n
    v_g = T_robot_global*T_lidar_robot * lidar_vector(:,i);
    plot(v_g(1), v_g(2), '+','Color', 'blue')
    hold on
end
% Posici�n del robot
plot(5,-7,'o','Color', 'red')
hold off