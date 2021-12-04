
function density = calcDensity(D,iteration,sides,partitions)
%% calcDensity
% Calculates the density matrix for the given iteration
%
% Parameters:
%   D
%     Symbolic function of x, y, t, or matrix of symbolic functions of t
%   iteration
%     The current iteration
%   (optional) sides
%     Side length of the arena
%   (optional) partitions
%     Number of subdivisions within each unit length of the arena
%
% Returns:
%   density
%     (sides*partitions)-by-(sides*partitions) matrix of doubles
%     representing discretized density for the given iteration
% density=zeros(10,10);
iteration=mod(iteration,8);
switch iteration
    case 0
        load density1.mat matrix
        density=matrix;
        clear matrix
    case 1
        load density2.mat matrix
        density=matrix;
        clear matrix
    case 2
        load density3.mat matrix
        density=matrix;
        clear matrix
    case 3
        load density4.mat matrix
        density=matrix;
        clear matrix
    case 4
        load density5.mat matrix
        density=matrix;
        clear matrix
    case 5
        load density6.mat matrix
        density=matrix;
        clear matrix
    case 6
        load density7.mat matrix
        density=matrix;
        clear matrix
    case 7
        load density8.mat matrix
        density=matrix;
        clear matrix
end


end
     