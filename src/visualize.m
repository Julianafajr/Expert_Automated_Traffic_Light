function visualize(trafficSnapshot, trafficLights, time)
% visualize
% Text-based visualization of traffic and light states

    directions = {'north', 'east', 'south', 'west'};
    
    fprintf('--- Time %ds ---\n', time);
    
    for i = 1:4
        dir = directions{i};
        vehicleCount = trafficSnapshot(i);
        lightState = trafficLights.(dir);
        
        % Format color display using uppercase blocks (text style)
        lightDisplay = '';
        switch lightState
            case 'RED'
                lightDisplay = '[🔴 RED ]';
            case 'GREEN'
                lightDisplay = '[🟢 GREEN]';
            otherwise
                lightDisplay = '[⚪️ UNKNOWN]';
        end
        
        fprintf('%-6s: %2d vehicles | Light: %s\n', upper(dir), vehicleCount, lightDisplay);
    end
    
    fprintf('---------------------------\n');
end
