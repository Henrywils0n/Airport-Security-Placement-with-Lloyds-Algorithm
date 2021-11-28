peopleDensity1=[20 5 10 20 150 20 30 0 0 0 0 0 0 0 0 0 0;
               150 10 10 10 10 10 10 20 0 0 0 0 0 0 0 0 0;
               70 150 60 140 20 10 10 140 10 150 30 20 10 5 5 5 0;
               0 0 0 0 0 0 0 0 150 40 10 10 10 10 10 10 10;
               0 0 0 0 0 0 0 0 0 0 150 5 5 5 5 5 5]; 
           
peopleDensity2=[140 20 5 5 5 10 20 0 0 0 0 0 0 0 0 0 0;
               70 25 25 20 10 20 60 150 0 0 0 0 0 0 0 0 0;
               140 15 50 150 20 130 10 40 30 40 10 15 5 5 5 5 5;
               0 0 0 0 0 0 0 0 20 5 5 5 5 5 5 5 5;
               0 0 0 0 0 0 0 0 0 5 5 5 5 5 5 5 0];

peopleDensity3=[5 5 5 20 130 40 10 0 0 0 0 0 0 0 0 0 0;
               5 5 5 5 10 50 10 20 0 0 0 0 0 0 0 0 0;
               5 5 5 5 5 20 150 50 10 30 130 50 10 5 5 5 5;
               0 0 0 0 0 0 0 0 5 5 5 5 5 5 5 5 5;
               0 0 0 0 0 0 0 0 0 5 5 5 5 5 5 5 5];

peopleDensity4=[5 5 5 10 10 20 130 0 0 0 0 0 0 0 0 0 0;
               5 5 5 10 20 10 10 20 20 0 0 0 0 0 0 0 0;
               5 5 5 20 130 50 5 40 30 40 10 15 20 120 50 10 5;
               0 0 0 0 0 0 0 0 20 10 10 25 15 5 10 10 10;
               0 0 0 0 0 0 0 0 0 150 50 5 5 5 5 5 5];
           
peopleDensity5=[5 5 10 50 130 60 260 0 0 0 0 0 0 0 0 0 0;
               5 5 5 20 20 20 10 20 70 0 0 0 0 0 0 0 0;
               5 5 20 130 50 50 5 20 30 20 20 20 50 50 50 10 5;
               0 0 0 0 0 0 0 0 20 10 10 10 10 10 10 10 10;
               0 0 0 0 0 0 0 0 0 20 20 20 5 5 5 5 5];
          
peopleDensity6=[10 10 20 150 50 40 130 0 0 0 0 0 0 0 0 0 0;
               20 10 5 20 20 20 30 20 70 0 0 0 0 0 0 0 0;
               140 50 20 130 50 20 5 20 30 20 20 20 10 10 10 10 5;
               0 0 0 0 0 0 0 0 20 10 10 10 10 10 10 10 10;
               0 0 0 0 0 0 0 0 0 10 10 10 5 5 5 5 5];
           
peopleDensity7=[200 200 200 200 200 200 50 0 0 0 0 0 0 0 0 0 0;
               20 30 30 20 30 30 30 20 20 0 0 0 0 0 0 0 0;
               10 10 10 130 50 20 5 20 30 20 20 20 10 10 10 10 5;
               0 0 0 0 0 0 0 0 20 10 10 10 10 10 10 10 10;
               0 0 0 0 0 0 0 0 0 10 10 10 5 5 5 5 5];
           
peopleDensity8=[5 10 10 10 10 20 150 0 0 0 0 0 0 0 0 0 0;
               10 10 10 10 30 20 20 20 20 0 0 0 0 0 0 0 0;
               10 10 10 10 10 10 10 20 130 50 20 10 10 10 10 10 5;
               0 0 0 0 0 0 0 0 10 10 20 10 10 10 10 10 10;
               0 0 0 0 0 0 0 0 0 10 10 10 10 5 5 5 5];
           
 pts1=points(peopleDensity1,1);
 pts2=points(peopleDensity2,2);
 pts3=points(peopleDensity3,3);
 pts4=points(peopleDensity4,4);
 pts5=points(peopleDensity5,5);
 pts6=points(peopleDensity6,6);
 pts7=points(peopleDensity7,7);
 pts8=points(peopleDensity8,8);

% save points8.mat pts8
% 
% clear points
% % Load them again
% load pos.mat


function pts= points(density, plotspace)    
hold on    
curPoint=1;
totalP=sum(density,'all');
fprintf("total people: %d\n",totalP)

for i=1:5
    for j=1:17
        for k=1:density(i,j)
            y(curPoint)=(i-1)+(i-(i-1)).*rand(1, 1);
            x(curPoint)=(j-1)+(j-(j-1)).*rand(1, 1);
            curPoint = curPoint+1;


        end
        subplot(8,1,plotspace); 
        plot(x,y,'.');
        set(gca, 'YDir','reverse');

    end
end
x=reshape(x,totalP,1);
y=reshape(y,totalP,1);
pts=horzcat(x,y);
end



