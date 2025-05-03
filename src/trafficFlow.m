function trafficData = trafficFlow(simTime, timeStep)
% trafficFlow
% Generate simulated traffic density data for each direction (vehicles per time unit)

    directions = {'north', 'east', 'south', 'west'};
    numSteps = simTime / timeStep;
    trafficData = zeros(numSteps, length(directions));

    for t = 1:numSteps
        % Simulate vehicle count in each direction using Poisson distribution
        % λ = average number of vehicles per second (0-5 typical)
        trafficData(t, 1) = poissrnd(3); % North
        trafficData(t, 2) = poissrnd(2); % East
        trafficData(t, 3) = poissrnd(4); % South
        trafficData(t, 4) = poissrnd(1); % West
    end
end
