%Initialize
win=0;
loss=0;
tries=1;
exit=0;
go=0;
%Inform user
   disp('Welcome to Interval Halving, you will have four chances to guess an integer between 0 and 10 that the computer select.')
while exit ~=1
    
   %Pick random number
   realnum=randi([0 10],1);
while tries<=4 && go==0

%Prompt user to guess
guess1=input('Please enter your guess (It must be an integer).');
%wining display
if realnum==guess1
    disp('You have selected the correct number, congrats')
    win=win+1;
    go=1;
%too high
elseif guess1 > realnum
    disp('Your number is too high, please select a new number')
    tries=tries+1;
%too low
elseif guess1 < realnum
    disp('Your number is too low, please select a new number')
    tries=tries+1;
end
end
%losing display
if tries==5
    fprintf('Sorry, You ran out of tries.\n The number was %i. \n',realnum)
    loss=loss+1;
end
%command prompt
enter=input('If you would like to play again type "a".\n If you would like to see the statistics type "b".\n If you would like to reset the statistics type "c".\n If you would like to quit type "d".\n','s');
if enter == 'a'
    tries=0;
    go=0;
elseif enter == 'b'
    fprintf('Wins: %i \n Losses: %i \n', win,loss)
elseif enter == 'c'
    win=0;
    loss=0;
elseif enter == 'd'
    exit=1;
end    
    

end