function [x_f, y_f, theta_f] = driveplot( x_i, y_i, theta_i, v_l, v_r, t, l , ruedas)
    
    rx_i = x_i+0.5*l*cos(pi/2 - theta_i);
    ry_i = y_i-0.5*l*sin(pi/2 - theta_i);
    
    lx_i = x_i-0.5*l*cos(pi/2 -theta_i);
    ly_i = y_i+0.5*l*sin(pi/2 -theta_i);
    
    for i = 0.1:0.1:t
              
    [x_f, y_f, theta_f] = diffdrive(x_i, y_i, theta_i, v_l, v_r, 0.1, l);

    % Recorrido del centro de masa
    line([x_i,x_f],[y_i,y_f])
    axis equal
    x_i = x_f;
    y_i = y_f;
    theta_i = theta_f;
    
    
    if ruedas == true    
        % Recorrido rueda derecha
        rx_f = x_f+0.5*l*cos(pi/2 - theta_f);
        ry_f = y_f-0.5*l*sin(pi/2 - theta_f);
        line([rx_i, rx_f], [ry_i,ry_f],'Color','black');
        rx_i = rx_f;
        ry_i = ry_f;

        % Recorrido rueda izquierda
        lx_f = x_f-0.5*l*cos(pi/2 -theta_f);
        ly_f = y_f+0.5*l*sin(pi/2 -theta_f);
        line([lx_i, lx_f], [ly_i,ly_f],'Color','black');
        lx_i = lx_f;
        ly_i = ly_f;
    end
    
    end
    hold on
    plot(x_f, y_f, 'o', 'Color', 'blue')
end

