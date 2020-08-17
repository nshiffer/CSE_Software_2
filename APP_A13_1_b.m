%************************************************
%*  Name:  Nick Shiffer   Date:  9/24/17        *
%*  Seat:  11    File:  APP_A_13_1_b.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  9/24/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A13_1_b.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
%Prompt user for voltage file name
file1 = input('What file sould be used? Include .txt/.dat', 's');
%Open text file for reading
open = fopen(file1);
%Read
voltages = fscanf(open,'%f');
%Ask user for offset
offset1 = input('What is the offset(v)?');
%add offset to voltage
newvoltage(1) = voltages(1)+offset1;
newvoltage(2) = voltages(2)+offset1;
newvoltage(3) = voltages(3)+offset1;
newvoltage(4) = voltages(4)+offset1;
newvoltage(5) = voltages(5)+offset1;
%open for writing
open2=fopen('APP_A13_1_voltageoutplus2b.txt','w');
%save
fprintf(open2,'%f\n',newvoltage);
%Show it has been saved
fprintf('The data plus offset has been saved as APP_A13_1_voltageoutplus2b.txt');
%close
fclose(open);
fclose(open2);
