%************************************************
%*  Name:  Nick Shiffer   Date:  10/09/17        *
%*  Seat:  11    File:  APP_A19_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/09/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A19_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
clear
clc
seats=load('APP_A19_1_seat_tubes.txt');

%Find max without using max()
hardmax=seats(1);
for (i=1:1:100)
    if(seats(i)>hardmax)
        hardmax=seats(i);
    end
end
%Find max using max()
easymax=max(seats);

%Find min without using min()
hardmin=seats(1);
for (t=1:1:100)
    if(seats(t)<hardmin)
        hardmin=seats(t);
    end
end
%Find min using min()
easymin=min(seats);

%Find mean without using mean()
hardmean=sum(seats)/length(seats);
%Find mean using mean()
easymean=mean(seats);

%Find SD without using std()
%calculate average
sum1=sum(seats);
avg=sum1/length(seats);
%calculate standard deviation
sumx=sum((seats-avg).^2);
hardstd=sqrt(sumx/(length(seats)-1));

%Find SD using std()
easystd=std(seats);

%Print
fprintf('The max found without using max() is %.04f in. \n The max found using max() is %.04f in. \n The min found without using min() is %.04f in. \n The min found using min() is %.04f in. \n The mean found without using mean() is %.04f in. \n The mean found using mean() is %.04f in. \n The STD found without using std() is %.04f in. \n The STD found without using std() is %.04f in. \n',hardmax,easymax,hardmin,easymin,hardmean,easymean,hardstd,easystd)
fprintf('The lengths are within specifications.')

%Sort without using sort()
swap=1;
r=seats;
while swap 
     swap = 0;
    for g=1:99
        if r(g) > r(g+1)
            v=r(g);
            r(g)=r(g+1);
            r(g+1)=v;
           swap=1;
        
        end
    end
end
        
%Sort using sort()
easysort=sort(seats);

%save
save('APP_19_1_seat_tubes_sorted_1.txt','r','-ascii');
save('APP_19_1_seat_tubes_sorted_2.txt','easysort','-ascii');



