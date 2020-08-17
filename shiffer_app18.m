%************************************************
%*  Name:  Nick Shiffer   Date:  10/08/17        *
%*  Seat:  11    File:  APP_A18_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/08/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A18_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')

%read file
watts=load('APP_A18_1_watts.dat');
%calculate average
sum1=sum(watts);
avg=sum1/31;
%calculate standard deviation
sumx=sum((watts-avg).^2);
sd=sqrt(sumx/31);
%Find one standev above average
sdplus=avg+sd;
%Display to screen
fprintf('The average power is %.2f watts.\n The standard deviation is %.2f watts or -%.2f watts.\n The amount of power that satisfies the power requirement of 1 plus the standard deviation above the average is %.2f watts.\n',avg,sd,sd,sdplus) 
%Create vector
V=[5:2:13];
%Find P for each wind turbine
P1=0.3*0.5*1.225*10*V.^3;
P2=0.3*0.5*1.225*100*V.^3;
P3=0.3*0.5*1.225*200*V.^3;
%Plot power and velovity
figure
plot(V,P1,'*b',V,P2,'og',V,P3,'--')
title('Power VS Velocity')
xlabel('Velocity (m/s)')
ylabel('Power (Watts)')
legend('WT #1','WT #2','WT #3')





