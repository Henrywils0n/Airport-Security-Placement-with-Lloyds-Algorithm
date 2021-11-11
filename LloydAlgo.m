peopleDensity=[10 15 15 10 20 20 10 0 0 0 0 0 0 0 0 0 0;
               70 15 25 20 50 50 40 20 20 0 0 0 0 0 0 0 0;
               5 40 40 5 0 0 5 40 30 40 10 15 0 0 0 0 0;
               0 0 0 0 0 0 0 0 10 10 10 25 15 10 30 30 10;
               0 0 0 0 0 0 0 0 0 5 5 5 5 5 5 5 0];         
hold on
for i=1:5
    for j=1:17
        x=(i-(i-1)).*rand(peopleDensity(i,j),1)+i;
        y=(j-(j-1)).*rand(peopleDensity(i,j),1)+j;
        plot(y,x,'.');  
    end
end

set(gca, 'YDir','reverse')
title("Airport distribution")