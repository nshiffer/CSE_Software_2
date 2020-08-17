%************************************************
%*  Name:  Nick Shiffer   Date:  9/25/17        *
%*  Seat:  11    File:  APP_A14_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  9/25/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A14_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
%load file
P=load('APP_A14_1_watts.dat');
%create summation variable
sum = 0;
%loop counter variable
i=1;
%set max
n=31;
%loop
for i = 1:1:n;
    sum =P(i)+sum;
end
avg=sum/31;
%sum variable 
sumdev=0;
%variables
j=1;
%loop
while (j<=n)
    sumdev= (P(j)-avg)^2+sumdev;
    j=j+1;
end
%finish calculation
sd=sqrt(sumdev/31);
%display to screen
fprintf(1,'The average is %f watts\n The standard deviation is %f watts',avg,sd)



    






