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
%Prompt user for voltage file name
file1 = input('What file sould be used? Include .txt/.dat', 's');
%Load file and pull to variable
voltages = load(file1);
%Prompt for offset 
offset1 = input('What is the offset(v)?');
%add offset to voltage
newvoltage(1) = voltages(1)+offset1;
newvoltage(2) = voltages(2)+offset1;
newvoltage(3) = voltages(3)+offset1;
newvoltage(4) = voltages(4)+offset1;
newvoltage(5) = voltages(5)+offset1;
%Save new data
save('APP_A13_1_voltageoutplus2a.txt','newvoltage','-ascii');
%Show it has been saved
fprintf('The data plus offset has been saved as APP_A13_1_voltageoutplus2a.txt');
