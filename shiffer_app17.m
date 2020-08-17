%************************************************
%*  Name:  Nick Shiffer   Date:  10/03/17        *
%*  Seat:  11    File:  APP_A17_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/03/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A17_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')

%Initialize variables;
a=0;
while a~=1
  %input mpg and totgallons
  mpg= input('\nHow many miles does your car usually drive on one gallon? ');
  totg= input('\nHow many gallons of gas do you need? ');
  %input costs of gas
  pricea= input('\nWhat is the price per gallon at Station A? ');
  priceb= input('\nWhat is the price per gallon at Station B? ');
  
  %Use function
  costa= Cost(totg,pricea);
  costb= Cost(totg,priceb);
  %input distance
  dist= input('\nWhat is the distance, in miles between Station A and Station B? ');
  %find gal
  gals=dist/mpg;
  %Use funtion to calc cost
  costbetween= Cost(gals,priceb);
  %Find total cost for B
  totb = costbetween+costb;
  difa = abs(costa - totb);
  if totb < costa
      fprintf('\nIt is $%0.2f cheaper to travel the extra distance and buy gas at Station B.\n',difa)
  elseif totb > costa
      fprintf('It is $%0.2f cheaper to buy gas at Station A.\n',difa)
  elseif totb == costa
      disp('The cost is the same if you buy at either station\n')
  end
  %Exit command
  exit2=input('If you would like to exit, type exit. If you would like to run the program again type any other word. ','s');
  if exit2 == 'exit'
      a=1;
  end
end