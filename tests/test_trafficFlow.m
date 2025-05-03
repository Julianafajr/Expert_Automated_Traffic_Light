function test_trafficFlow()
% test_trafficFlow
% Unit test for trafficFlow function

    disp('Running test_trafficFlow...');
    
    simTime = 60; % seconds
    timeStep = 1;
    data = trafficFlow(simTime, timeStep);
    
    % Check dimensions
    assert(size(data, 1) == simTime, 'Incorrect number of time steps.');
    assert(size(data, 2) == 4, 'Data should have 4 columns (directions).');

    % Check values: non-negative integers
    assert(all(data(:) >= 0), 'Traffic data should be non-negative.');
    assert(all(mod(data(:),1) == 0), 'Traffic data should be integers.');
    
    disp('✅ test_trafficFlow passed.');
end
