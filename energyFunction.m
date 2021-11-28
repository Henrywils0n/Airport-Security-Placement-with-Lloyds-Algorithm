function deltaEnergy = energyFunction(velocity, deltaPosition, dt)

m = 100; % Physical mass of agents in kg ***CHANGE THIS***
dim = 1; % length of 1 unit of measurement in simulation in m

v = vecnorm(deltaPosition,2,2)*dim/dt; % m/s
deltaEnergy = (-1/2)*m*(v.^2);

%% energyFunction
% Determines how much energy each agent uses when moving.
% This can incorporate kinetic energy, friction, etc. to update battery
% levels
%
% Parameters:
%   velocity
%     n-by-1 vector of the velocity that each agent travelled at in the
%     previous iteration
%   deltaPosition
%     n-by-2 vector of the change in position (deltaX, deltaY) of each
%     agent
%   dt
%     Simulated time step
% Returns:
%   deltaEnergy
%     n-by-1 vector of the change in energy for each agent (negative if
%     energy is being used)