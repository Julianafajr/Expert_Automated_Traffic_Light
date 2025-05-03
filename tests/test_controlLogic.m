function test_controlLogic()
% test_controlLogic
% Unit test for controlLogic function

    disp('Running test_controlLogic...');
    
    % Test normal condition (no emergency)
    trafficSnapshot = [3, 5, 2, 1];  % East has most vehicles
    currentLights = struct('north','RED','east','RED','south','RED','west','RED');
    emergency = false;

    result = controlLogic(trafficSnapshot, currentLights, emergency);
    assert(strcmp(result.east, 'GREEN'), 'East should be GREEN in normal condition.');
    assert(all(str
