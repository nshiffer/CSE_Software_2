%************************************************
%*  Name:  Nick Shiffer   Date:  9/24/17        *
%*  Seat:  11    File:  APP_A13_1_a.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  9/24/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A13_1_a.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
%Prompt user for temp
c = input('What is the temperature in Celsius');
%read response
fprintf('%f',c)
%Compute temps
%C to F
f = (c * (9/5)) + 32.0;
k = c + 273.15;
r = (c + 273.15) * (9/5);
de = (100 - c)*(3/2);
n = c * (33/100);
re = c * (4/5);
ro = c * (21/40) + 7.5;
%display
fprintf('Your input temperature is %f °C \n Your output temperatures are\n %f °F\n %f K\n %f R \n %f °De \n %f °N \n %f °Ré \n %f °Rø',c,f,k,r,de,n,re,ro);
%open for writing
open2=fopen('outputEWA.txt','w');
%save
fprintf(open2,'Your input temperature is %f °C \n Your output temperatures are\n %f °F\n %f K\n %f R \n %f °De \n %f °N \n %f °Ré \n %f °Rø',c,f,k,r,de,n,re,ro);
%imput a b and rh
a=input('\n Input a=');
b=input('\n Input b=');
rh=input('\n Input Relative Humidity=');
%Compute dewpoint and relative humidity
td = (b*(((a*c)/(b+c))+log(rh/100)))/(a-(((a*c)/(b+c))+log(rh/100)));
%display
fprintf('\nYour inputs are:\n a = %f \n b = %f °C\n RH = %f \n The dewpoint for your given input is %f\n',a,b,rh,td);
%write in ouput file
fprintf(open2,'\nYour inputs are:\n a = %f \n b = %f °C\n RH = %f \n The dewpoint for your given input is %f\n',a,b,rh,td);
fclose(open2);

