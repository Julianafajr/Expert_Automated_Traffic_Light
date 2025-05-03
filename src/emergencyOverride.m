function isEmergency = emergencyOverride()
% emergencyOverride
% Randomly simulate detection of emergency vehicle

    % Set emergency appearance probability (e.g., 10%)
    emergencyProbability = 0.1;

    % Generate random number between 0 and 1
    roll = rand();

    if roll < emergencyProbability
        isEmergency = true;
    else
        isEmergency = false;
    end
end
