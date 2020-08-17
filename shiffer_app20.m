clear
clc
%************************************************
%*  Name:  Nick Shiffer   Date:  10/10/17        *
%*  Seat:  11    File:  APP_A20_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/10/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A20_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')



%load
press=load('APP_A20_1_pressure.txt');

%Find mean and std of original
mean1=mean(press(:,2));
std1=std(press(:,2));

%remove zeros
j=1;
for i=1:1:length(press)
    if press(i,2)~=0
        newvector(j,2)=press(i,2);
        newvector(j,1)=press(i,1);
        j=j+1;
    end
end 

%Find new mean and std
mean2=mean(newvector(:,2));
std2=std(newvector(:,2));

%Print data to screen
fprintf('Mean of original: %.4f. \n Mean of the new: %.4f. \n Standard deviation of the original: %.4f. \n Standard deviation of the new: %.4f.\n', mean1,mean2,std1,std2)

%Plot
figure
plot(press(:,1),press(:,2),newvector(:,1),newvector(:,2));
xlabel('Time(s)')
ylabel('Pressure(kPa)')
title('Time VS Pressure')
legend('Before Extraction of 0s','After Extraction of 0s')

%Display number of corrupted points
corrupt=length(press)-length(newvector);
fprintf('The number of corupped points was %i.\n',corrupt)

