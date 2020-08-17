clear
clc
%************************************************
%*  Name:  Nick Shiffer   Date:  10/11/17        *
%*  Seat:  11    File:  shifferAPP21.m            *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/11/17        *')
fprintf ('\n*  Seat:  11    File:  shifferAPP21.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')




for n=3:1:8
fprintf('\nThe program will generate 10^%i coordinate pairs.\n',n)
b(n-2)=10^n;
inside=0;
total=0;
tic; %resets timer
for a=1:1:b(n-2)
    
    x=rand();
    y=rand();
    
    R=sqrt((x-0.5)^2+(y-0.5)^2);
    
    if R<=0.5
        inside=inside+1;
       
    end
e(n-2)=inside;        
   
end
t(n-2)=toc; %stops the timer, saves the elapsed time, in seconds, to t
pisim(n-2)=4*(e(n-2)/b(n-2));
perror(n-2)=(abs(pi()-pisim(n-2))/pi())*100;
fprintf('\nThe simulated pi is %f\n The percent error is %f percent. \n It took %f.4 sec to run.\n',pisim(n-2),perror(n-2),t(n-2))

end


figure
semilogx(b,pisim)
xlabel('Log of Number of Coordinate Pairs')
ylabel('Simulated Pi Values')
title('Log of Number of Coordinate Pairs VS Simulated Pi Values')

figure
semilogx(b,perror)
xlabel('Log of Number of Coordinate Pairs')
ylabel('Percent Error')
title('Log of Number of Coordinate Pairs VS Percent Error')

figure
loglog(b,t)
xlabel('Log of Number of Coordinate Pairs')
ylabel('Log of Computational Time')
title('Log of Number of Coordinate Pairs VS Log of Computational Time')