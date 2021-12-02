peopleDensity1=[30 15 15 30 150 30 30 0 0 0 0 0 0 0 0 0 0;
               150 15 15 15 15 15 15 30 0 0 0 0 0 0 0 0 0;
               75 150 60 150 30 15 15 150 15 150 30 30 15 15 15 15 0;
               0 0 0 0 0 0 0 0 150 45 15 15 15 15 15 15 15;
               0 0 0 0 0 0 0 0 0 0 150 15 15 15 15 15 15]; 
           
peopleDensity2=[150 30 15 15 15 15 30 0 0 0 0 0 0 0 0 0 0;
               60 15 15 30 15 30 60 150 0 0 0 0 0 0 0 0 0;
               150 15 60 150 30 150 15 45 30 45 15 15 15 15 15 15 15;
               0 0 0 0 0 0 0 0 30 15 15 15 15 15 15 15 15;
               0 0 0 0 0 0 0 0 0 15 15 15 15 15 15 15 0];

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
           
peopleDensity8=[15 15 15 15 15 30 150 0 0 0 0 0 0 0 0 0 0;
               15 15 15 15 30 30 30 30 30 0 0 0 0 0 0 0 0;
               15 15 15 15 15 15 15 30 135 60 30 15 15 15 15 15 15;
               0 0 0 0 0 0 0 0 15 15 15 15 15 15 15 15 15;
               0 0 0 0 0 0 0 0 0 15 15 15 15 15 15 15 15];


den1=points(peopleDensity1,1);
den2=points(peopleDensity2,2);
den3=points(peopleDensity3,3);
den4=points(peopleDensity4,4);
den5=points(peopleDensity5,5);
den6=points(peopleDensity6,6);
den7=points(peopleDensity7,7);
den8=points(peopleDensity8,8);
 
%save density2.mat den2 
% % 
%clear points2.mat
% % % Load them again
%load points2.mat

function d= points(density, plotspace) 
curPoint=1;
totalP=sum(density,'all');
fprintf("total people: %d\n",totalP);

for i=1:5
    for j=1:17
        for k=1:density(i,j)
            y(curPoint)=(5-(i-1)+(i-(i-1)).*rand(1, 1));
            x(curPoint)=(j-1)+(j-(j-1)).*rand(1, 1);
            curPoint = curPoint+1;
        end
        
        subplot(8,1,plotspace); 
        title(sprintf('Population Distribution %d vs Time',plotspace-1))
        plot(x,y,'.');
       

    end
end
x=reshape(x,totalP,1);
y=reshape(y,totalP,1);
x=x*10/17;
y=y*2;

for m=1:10
      for n=1:10    
        xs=[n-1;n];
        ys=[m-1;m];
        in = inpolygon(x,y,xs,ys);
        fprintf("%d\t",numel(x(in)));
        d(m,n)=numel(x(in))/totalP;
        
      end
        fprintf("\n");
    
end

end




