function mean_pos = mean_position(particles, weights)
    % Returns a single estimate of filter state based on the particle cloud.
    %
    % particles (M x 3): set of M particles to sample from. Each row contains a state hypothesis of dimension 3 (x, y, theta).
    % weights (M x 1): weights of the particles. Each row contains a weight.

    % initialize
    mean_pos = zeros(1,3);
    %% TODO: compute mean_pos   
    for i = 1:size(particles,1)
       mean_pos(1) = mean_pos(1) + particles(i,1).*weights(i);
       mean_pos(2) = mean_pos(2) + particles(i,2).*weights(i);
       mean_pos(3) = mean_pos(3) + particles(i,3).*weights(i);
    end
    
    mean_pos = mean_pos./ sum(weights)
    
end
