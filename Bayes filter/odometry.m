function [ nx, ny, ntheta ] = odometry(p, u, a)
% Modelo de movimiento basado en odometr�a
% Pose inicial
x = p(1);
y = p(2);
theta = p(3);
% Odometr�a
delta_r1  = u(1);
delta_r2  = u(2);
delta_t = u(3);
% Par�metros de ruido
a_1 = a(1);
a_2 = a(2);
a_3 = a(3);
a_4 = a(4);
% Errores por odometr�a
dr1 = delta_r1 + norm3(0, a_1*abs(delta_r1) + a_2*abs(delta_r2));
dt = delta_r1 + norm3(0, a_3*delta_t + a_4*(abs(delta_r1) + abs(delta_r2) ));
dr2 = delta_r2 + norm3(0, a_1*abs(delta_r1) + a_2*delta_t);
% Nueva pose del robot
nx = x + dt*cos(theta + dr1);
ny = y + dt*sin(theta + dr1);
ntheta = theta + dr1 + dr2;

end

