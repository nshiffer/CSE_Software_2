time=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP1_data','A2:A10001');
amp1=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP1_data','B2:B10001');
amp2=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP1_data','D2:D10001');

tp1avg=mean(amp1);
tp1max=max(amp1);
tp1min=min(amp1);
tp1peak=tp1max-tp1min

figure
plot(time,amp1,time,amp2)
ylim([3.97,4.08])
title('TP1 Time VS Amplitude')
xlabel('Time (s)')
ylabel('Amplitude (Volts)')
legend('Sensor Data','Heartbeat Data')

time2=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP2_data','A2:A10001');
amp3=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP2_data','B2:B10001');
amp4=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','TP2_data','D2:D10001');

tp2avg=mean(amp3);
tp2max=max(amp3);
tp2min=min(amp3);
tp2peak=tp2max-tp2min

figure
plot(time2,amp3,time2,amp4)
ylim([2,2.1])
title('TP2 Time VS Amplitude')
xlabel('Time (s)')
ylabel('Amplitude (Volts)')
legend('Sensor Data','Heartbeat Data')

time3=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','A0_data','A2:A10001');
amp5=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','A0_data','B2:B10001');
amp6=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','A0_data','D2:D10001');

A0avg=mean(amp5);
A0max=max(amp5);
A0min=min(amp5);
A0peak=A0max-A0min

%figure
%plot(time3,amp5,time3,amp6)
%title('A0 Time VS Amplitude')
%xlabel('Time (s)')
%ylabel('Amplitude (Volts)')
%legend('Sensor Data','Heartbeat Data')

time4=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','D0_data','A2:A10001');
amp7=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','D0_data','B2:B10001');
amp8=xlsread('Data_Acquisition_Datasheet_InstructorTime_GroupLetter.xlsx','D0_data','D2:D10001');

D0avg=mean(amp7);
D0max=max(amp7);
D0min=min(amp7);
D0peak=D0max-D0min

%figure
%plot(time4,amp6,time4,amp7)
%title('D0 Time VS Amplitude')
%xlabel('Time (s)')
%ylabel('Amplitude (Volts)')
%legend('Sensor Data','Heartbeat Data')

