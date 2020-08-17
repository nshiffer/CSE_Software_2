%Materials Testing Script File - Updated 10/31/17 HV/ADU

clear; clc; close all;

%load the data
%the format assumed is two columns. The first column are the force data and
%the second column are the associated deflection values in inches
%CHANGE: deflection values converted to meters in excel previously
%CHANGE: name of data files
%CHANGE: function type to xlsread instead of load
[force]=xlsread('MT_data.xls', 3, 'A1:A6');
[steel]=xlsread('MT_data.xls', 3, 'B1:B6');
[brass]=xlsread('MT_data.xls', 3, 'C1:C6');
[alurec]=xlsread('MT_data.xls', 3, 'D1:D5');
[alubox]=xlsread('MT_data.xls', 3, 'E1:E6');
[force2]=xlsread('MT_data.xls', 3, 'A1:A5');

%CHANGE: removed step to reassign force vector

%plot the data
%CHANGE: name of vectors
%CHANGE: addition of three other materials' data
figure (1)
hold on
plot (force, steel, 'b+', force, brass, 'r*', force2, alurec, 'gd', force, alubox, 'ms')

%determine the linear trendline for the data

%the polyfit function returns a vector of the coefficients from the
%trendline and takes the following format 
% C = polyfit(x,y,N) 
%where N is the power of the trendline and the values
%in C are the coefficients.  For a linear trendline the value 
%of N would be 1, for a quadtratic fit, N would be 2, etc.
%coeffecients of the linear trendlines will need to be found for each
%material ploted
%CHANGE: name of vector data
%CHANGE: three additional equations for other materials

C_steel=polyfit(force, steel, 1);
C_brass=polyfit(force, brass, 1);
C_alurec=polyfit(force2, alurec, 1);
C_alubox=polyfit(force, alubox, 1);


%Now we need to plot the linear trendline using the coefficients produced
%by the polyfit function.  To do so, we need to create a variable to use
%for x using linspace to create 20 points equally spaced between 0 and
%your maximum force value
%CHANGE: name of data
%CHANGE: three additional equations for other materials
x_steel=linspace(0, max(force), 20);
x_brass=linspace(0, max(force), 20);
x_alurec=linspace(0, max(force2), 20);
x_alubox=linspace(0, max(force), 20);

%create a linear line using y=C*x 
%where C is coeffecient returned from the polyfit function above
%CHANGE: name of data
%CHANGE: three additional equations for other materials
lin_steel=C_steel(1)*x_steel;
lin_brass=C_brass(1)*x_brass;
lin_alurec=C_alurec(1)*x_alurec;
lin_alubox=C_alubox(1)*x_alubox;

%plot the linear trendline on the same graph as your raw data
%CHANGE: addition of three other material plots
%CHANGE: trendline color for first plot
%CHANGE: title of graph
plot(x_steel,lin_steel,'b', x_brass, lin_brass,'r', x_alurec, lin_alurec,'g', x_alubox, lin_alubox,'m')
xlabel('Force Applied (N)');
ylabel('Deflection Measured (m)');
title('Measured Deflection vs. Force Applied for Various Materials');


%then, to label the trendline with the proper equation, using the gtext
%command allows you to click where you want to place the text once the
%figure opens
%CHANGE: three more equations for three additional materials

steel_str=sprintf('Steel = %fx', C_steel(1));
gtext(steel_str)

brass_str=sprintf('Brass = %fx', C_brass(1));
gtext(brass_str)

alurec_str=sprintf('Aluminum Rectangle = %fx', C_alurec(1));
gtext(alurec_str)

alubox_str=sprintf('Aluminum Box = %fx', C_alubox(1));
gtext(alubox_str)


hold off



