%     the current iteration
%   partitions
%     Number of subdivisions within each unit length of the arena
%
% Returns:
%   mass
%     n-by-1 vector where the ith entry is the mass of agent i's observed
%     region (x) sum(density(partitions*[x(:,2) x(:,1)]),'all')
    size = length(agentPoints);
    masses = zeros(size, 1);
    for i = 1:size
        numPoints = length(agentPoints(i));
        mass = 0;
        for j = 1:numPoints
            %Assuming agentPoints gives the right format (list of partitioned cells seen by agent i)
            %Basically loops through every region seen by agent i and adds
            %density in that region to agents running mass total
            mass = mass + density(agentPoints(j, 1), agentPoints(j, 2));
            %May need to multiply by partitions?
        end
        masses(j, 1) = mass;
    end
end