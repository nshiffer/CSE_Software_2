
%Materials Testing Script File - Updated 10/31/17 HV/ADU

clear; clc; close all;

%This script file was created as an example for the Materials Testing Lab
%The students can use this script file as a starting point.  
%They should cite the source of this code and comment
%the code to document their changes.


%load the data
%the format assumed is two columns. The first column are the force data and
%the second column are the associated deflection values in inches
%changed to xlsread to read in data
[Force]=xlsread('Materials_Testing_Datasheet.xlsx',3,'A1:A6');
[Steel]=xlsread('Materials_Testing_Datasheet.xlsx',3,'B1:B6');
[Brass]=xlsread('Materials_Testing_Datasheet.xlsx',3,'C1:C6');
[Aluminum]=xlsread('Materials_Testing_Datasheet.xlsx',3,'D1:D5');
[AluminumBox]=xlsread('Materials_Testing_Datasheet.xlsx',3,'E1:E6');
[Force2]=xlsread('Materials_Testing_Datasheet.xlsx',3,'A1:A5');

%Deleted these
%
%
%

%plot the data
%added more data to plot
figure (1)
hold on
plot (Force, Steel, 'b+', Force, Brass, 'r*', Force2, Aluminum, 'g--', Force, AluminumBox, 'cd')


%determine the linear trendline for the data

%the polyfit function returns a vector of the coefficients from the
%trendline and takes the following format 
% C = polyfit(x,y,N) 
%where N is the power of the trendline and the values
%in C are the coefficients.  For a linear trendline the value 
%of N would be 1, for a quadtratic fit, N would be 2, etc.
%coeffecients of the linear trendlines will need to be found for each
%material ploted
%added more line for extra data

C_steel=polyfit(Force, Steel, 1);
C_br=polyfit(Force, Brass, 1);
C_al=polyfit(Force2, Aluminum, 1);
C_alb=polyfit(Force, AluminumBox, 1);



%Now we need to plot the linear trendline using the coefficients produced
%by the polyfit function.  To do so, we need to create a variable to use
%for x using linspace to create 20 points equally spaced between 0 and
%your maximum force value
%added more line for extra data
x_steel=linspace(0, max(Force), 20);
x_br=linspace(0, max(Force), 20);
x_al=linspace(0, max(Force2), 20);
x_alb=linspace(0, max(Force), 20);

%create a linear line using y=C*x 
%where C is coeffecient returned from the polyfit function above
%added more line for extra data
lin_steel=C_steel(1)*x_steel;
lin_br=C_br(1)*x_br;
lin_al=C_al(1)*x_al;
lin_alb=C_alb(1)*x_alb;

%plot the linear trendline on the same graph as your raw data
%added more line for extra data
plot(x_steel,lin_steel,'k', x_br, lin_br,'r',x_al,lin_al,'g',x_alb,lin_alb,'c')
xlabel('Force Applied (N)');
ylabel('Deflection Measured (m)');
title('Deflection VS Force of Different Metals ');


%then, to label the trendline with the proper equation, using the gtext
%command allows you to click where you want to place the text once the
%figure opens
%added more line for extra data
steel_str=sprintf('Steel = %fx', C_steel(1));
gtext(steel_str)
br_str=sprintf('Brass = %fx', C_br(1));
gtext(br_str)
al_str=sprintf('Alumnium Rectangle = %fx', C_al(1));
gtext(al_str)
alb_str=sprintf('Alumnium Hollow Box = %fx', C_alb(1));
gtext(alb_str)


hold off