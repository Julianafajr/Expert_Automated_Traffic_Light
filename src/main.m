% main.m
% Expert Automated Traffic Light System
% -------------------------------------
% This script initializes and runs the full simulation.

clear; clc; close all;

disp('--- Expert Automated Traffic Light Simulation Started ---');

% Simulation Parameters
simulationTime = 60; % in seconds
timeStep = 1;        % time resolution in seconds

% Initialize traffic data
trafficData = trafficFlow(simulationTime, timeStep);

% Initialize light states
trafficLights = struct('north', 'RED', 'east', 'RED', 'south', 'RED', 'west', 'RED');

% Main simulation loop
for t = 1:timeStep:simulationTime
    fprintf('\nTime: %ds\n', t);

    % Check for emergency vehicle
    emergencyDetected = emergencyOverride();

    % Update traffic lights based on traffic and emergency condition
    trafficLights = controlLogic(trafficData(t,:), trafficLights, emergencyDetected);

    % Visualize current state
    visualize(trafficData(t,:), trafficLights, t);
end

disp('--- Simulation Complete ---');
