function new_particles = resample(particles, weights)
    % Returns a new set of particles obtained by performing
    % stochastic universal sampling.
    %
    % particles (M x D): set of M particles to sample from. Each row contains a state hypothesis of dimension D.
    % weights (M x 1): weights of the particles. Each row contains a weight.
    new_particles = [];

    M = size(particles, 1);
    c = zeros(M);
    c(1) = weights(1);
    u = zeros(M);
    
    %% TODO: complete this stub
    for i = 2:M
        c(i) = c(i-1) + weights(i);
    end

    u(1) = (1/M)*rand();
    
    i = 1;
    for j = 1:M
        while c(i) < u(j)
            i = i + 1;
        end
        new_particles(j,1) = particles(i,1);
        new_particles(j,2) = particles(i,2);
        new_particles(j,3) = particles(i,3);
        %new_particles = append(new_particles, particles(i,1));
        
        u = u + 1/M;
    end
    disp(size(new_particles))
end
