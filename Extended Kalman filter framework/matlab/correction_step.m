function [mu, sigma] = correction_step(mu, sigma, z, l)
    % Updates the belief, i. e., mu and sigma, according to the sensor model
    %
    % The employed sensor model is range-only.
    %
    % mu: 3 x 1 vector representing the mean (x, y, theta) of the normal distribution
    % sigma: 3 x 3 covariance matrix of the normal distribution
    % z: structure containing the landmark observations, see
    %    read_data for the format
    % l: structure containing the landmark position and ids, see
    %    read_world for the format

    
    % Compute the expected range measurements.
    % This corresponds to the function h.
    expected_ranges = zeros(size(z, 2), 1);
    for i = 1:size(z, 2)
        landmark_position = [l(z(i).id).x, l(z(i).id).y];
        expected_ranges(i) = sqrt((landmark_position(1) - mu(1))*(landmark_position(1) - mu(1)) + (landmark_position(2) - mu(2))*(landmark_position(2) - mu(2)));
    end

    % Jacobian of h
    H = zeros(size(z, 2), 3);

    % Measurements in vectorized form
    Z = zeros(size(z, 2), 1);
    for i = 1:size(z, 2)
        landmark_position = [l(z(i).id).x, l(z(i).id).y];
        H(i, 1) = [-(landmark_position(1) - mu(1))/(expected_ranges(i))];
        H(i, 2) = [-(landmark_position(2) - mu(2))/(expected_ranges(i))];
        H(i, 3) = 0;
        Z(i) = z(i).range;
    end

    R = diag(repmat([0.5], size(z, 2), 1));
    S = H*sigma*transpose(H) + R;
    K = sigma*transpose(H)*inv(S);
    mu = mu + K*(Z - expected_ranges);
    I = diag(repmat([1], size(K*H, 2), 1));
    sigma = (I-K*H)*sigma;
end
