%************************************************
%*  Name:  Nick Shiffer   Date:  9/26/17        *
%*  Seat:  11    File:  APP_A15_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  9/26/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A15_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
%Use a loop to create volatege and time
%create summation variable
V = 0;
%loop counter variable
t=0;
%loop
for t = 0:1:400
    V(t+1) =3^(7-t/100);
    time(t+1)=t/10;
    
end
%Plot Data
figure
plot(time,V)
xlabel('Time (s)')
ylabel('Voltage (mV)')
title('Capacitor Dissipation Linear')

%Plot with semilogx
figure
semilogx(time,V,'o')
xlabel('log Time (s)')
ylabel('Voltage (mV)')
title('Capacitor Dissipation log(Time)')

%Plot with semilogy
figure
semilogy(time,V,'-')
xlabel('Time (s)')
ylabel('log Voltage (mV)')
title('Capacitor Dissipation log(Voltage)')

%Plot with loglog
figure
loglog(time,V,'*')
xlabel('log Time (s)')
ylabel('log Voltage (mV)')
title('Capacitor Dissipation log(Voltage) log(Time)')


