peopleDensity=[10 15 15 10 20 20 10 0 0 0 0 0 0 0 0 0 0;
               70 15 25 20 50 50 40 20 20 0 0 0 0 0 0 0 0;
               5 40 40 5 0 0 5 40 30 40 10 15 0 0 0 0 0;
               0 0 0 0 0 0 0 0 10 10 10 25 15 10 30 30 10;
               0 0 0 0 0 0 0 0 0 5 5 5 5 5 5 5 0];     

totalP=sum(peopleDensity,'all');
fprintf("total people: %d\n",totalP)
hold on
curPoint = 1;
for i=1:5
    for j=1:17
        for k=1:peopleDensity(i,j)
            y(curPoint)=(i-1)+(i-(i-1)).*rand(1, 1);
            x(curPoint)=(j-1)+(j-(j-1)).*rand(1, 1);
            %x=((i-(i-1)).*rand(peopleDensity(i,j)+i,1);
            %y=(j-(j-1)).*rand(peopleDensity(i,j)+j,1);
            fprintf("(%d,%d)\n",x(k),y(k));
            curPoint = curPoint+1;
            
        end
       
      
        plot(x,y,'.');  
    end
end

x=reshape(x,[825,1]);
y=reshape(y,[825,1]);
points=horzcat(x,y);

set(gca, 'YDir','reverse')
title("Airport distribution")
