function updatedLights = controlLogic(trafficSnapshot, currentLights, emergencyDetected)
% controlLogic
% Update traffic light states based on traffic data and emergency flag

    directions = {'north', 'east', 'south', 'west'};
    updatedLights = currentLights;

    if emergencyDetected
        % Emergency override: prioritize emergency path (simulasi arah random)
        emergencyDir = directions{randi(4)};
        fprintf('⚠️  Emergency detected! Prioritizing %s direction\n', emergencyDir);
        for i = 1:4
            if strcmp(directions{i}, emergencyDir)
                updatedLights.(directions{i}) = 'GREEN';
            else
                updatedLights.(directions{i}) = 'RED';
            end
        end
    else
        % Normal logic: find highest traffic direction
        [~, maxIndex] = max(trafficSnapshot);
        for i = 1:4
            if i == maxIndex
                updatedLights.(directions{i}) = 'GREEN';
            else
                updatedLights.(directions{i}) = 'RED';
            end
        end
    end
end
