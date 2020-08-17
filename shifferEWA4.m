clear
clc
%************************************************
%*  Name:  Nick Shiffer   Date:  10/10/17        *
%*  Seat:  11    File:  shifferEWA4.m            *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/10/17        *')
fprintf ('\n*  Seat:  11    File:  shifferEWA4.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')

%EWA04
a=0;
while a~=1

    %Ask user for which story
    wow=input('\nPlease enter which MADLIB would would like to play. Choose A, B, or C.','s');

switch wow
   
    case 'A'
% Story #1 print to screen.  You must copy this statement and modify it
% to also print to an output file.

%assign variables
adjective1=wordtype('adjective');
adjective2=wordtype('adjective');
adjective3=wordtype('adjective');
plural_noun1=wordtype('plural noun');
game_sport=wordtype('game sport');
place_on_OSU_campus=wordtype('place on campus');
animal=wordtype('animal');
place=wordtype('place');
activity_class=wordtype('activity class');
name1=wordtype('name');
past_tense_verb1=wordtype('past tense verb');
%display
fprintf(1,'\n\nOne %s autumn morning, %s took a/an %s for a walk. \nBecause %s was late for %s, he/she %s \nall the way to the %s. On the way there %s passed\nthrough the %s where he/she saw a/an %s, but excited Brutus. \n%s also saw a large, %s group of %s, playing %s.\nWhen  %s arrived at the %s, he/she realized it was Friday\nand he/she didn''t have %s today.\n\n',adjective1, name1, animal, name1, activity_class, past_tense_verb1, place, name1,place_on_OSU_campus, adjective2, name1, adjective3, plural_noun1, game_sport, name1, place, activity_class)
%ask for file name
filename1=input('\nPlease enter the name of your file','s');
%create file and print to it
file1=fopen(filename1,'w');
fprintf(file1,'\n\nOne %s autumn morning, %s took a/an %s for a walk. \nBecause %s was late for %s, he/she %s \nall the way to the %s. On the way there %s passed\nthrough the %s where he/she saw a/an %s, but excited Brutus. \n%s also saw a large, %s group of %s, playing %s.\nWhen  %s arrived at the %s, he/she realized it was Friday\nand he/she didn''t have %s today.\n\n',adjective1, name1, animal, name1, activity_class, past_tense_verb1, place, name1,place_on_OSU_campus, adjective2, name1, adjective3, plural_noun1, game_sport, name1, place, activity_class);
fclose(file1);

    case 'B'
%same as A but with different story
% Story #2 print to screen.  You must copy this statement and modify it
% to also print to an output file.
adjective1=wordtype('adjective');
adjective2=wordtype('adjective');
adjective3=wordtype('adjective');
adjective4=wordtype('adjective');
adjective5=wordtype('adjective');
adjective6=wordtype('adjective');
plural_noun1=wordtype('plural noun');
plural_noun2=wordtype('plural noun');
present_verb1=wordtype('present verb');
present_verb2=wordtype('present verb');
present_verb3=wordtype('present verb');
noun1=wordtype('noun');
name1=wordtype('name');
verb1=wordtype('verb');
family_member1=wordtype('family member');

fprintf(1,'\n\nIn a/an %s galaxy not unlike ours, on a/an %s planet not \nunlike this one, there live a/an %s but curious group of %s.  \nEach of them are required to %s with a %s everyday, and if \nanyone forgets they are publicly shamed for their %s insubordination.  \nOne day, %s forgot this duty and decided to %s instead of \ntaking his/her punishment.  Obviously, the rest of the %s were \n%s and %s by his/her actions. There were not enough \n%s on the entire %s planet or in the %s \ngalaxy to excuse %s of his/her actions.  %s had no choice but to \n%s.  Surprisingly this was enough to gain %s the forgiveness of \nhis/her %s who eventually convinced the colony of %s \nto %s  %s. Needless to say, things either turned out good \nor bad for %s; it all depends on perspective.\n\n',adjective1, adjective2, adjective3, plural_noun1, present_verb1, noun1, adjective4, name1, present_verb2, plural_noun1, adjective5, adjective6, plural_noun2,adjective2,adjective1,name1,name1,verb1,name1,family_member1, plural_noun1, present_verb3,name1,name1)

filename2=input('\nPlease enter the name of your file','s');

file2=fopen(filename2,'w');
fprintf(file2,'\n\nIn a/an %s galaxy not unlike ours, on a/an %s planet not \nunlike this one, there live a/an %s but curious group of %s.  \nEach of them are required to %s with a %s everyday, and if \nanyone forgets they are publicly shamed for their %s insubordination.  \nOne day, %s forgot this duty and decided to %s instead of \ntaking his/her punishment.  Obviously, the rest of the %s were \n%s and %s by his/her actions. There were not enough \n%s on the entire %s planet or in the %s \ngalaxy to excuse %s of his/her actions.  %s had no choice but to \n%s.  Surprisingly this was enough to gain %s the forgiveness of \nhis/her %s who eventually convinced the colony of %s \nto %s  %s. Needless to say, things either turned out good \nor bad for %s; it all depends on perspective.\n\n',adjective1, adjective2, adjective3, plural_noun1, present_verb1, noun1, adjective4, name1, present_verb2, plural_noun1, adjective5, adjective6, plural_noun2,adjective2,adjective1,name1,name1,verb1,name1,family_member1, plural_noun1, present_verb3,name1,name1);
fclose(file2);


    case 'C'
%same as A with different story
% Story #3 print to screen.  You must copy this statement and modify it
% to also print to an output file.
adjective1=wordtype('adjective');
adjective2=wordtype('adjective');
adjective3=wordtype('adjective');
occupation1=wordtype('occupation');
occupation2=wordtype('occupation');
type_of_shelter=wordtype('type of shelter');
number1=wordtype('number');
number2=wordtype('number');
unit_of_time=wordtype('unit of time');
present_verb1=wordtype('present verb');
adverb=wordtype('adverb');



fprintf(1,'\n\nOnce upon a time there was a/an %s %s who sought the aid of a/an\n%s %s to help her escape from the dreadful %s\nshe has been locked in for the past %s %s. Finally after\nseveral newspaper ads and a couple of smoke signals the %s \n%s %s his way past the fire breathing dragon, through the \n%s foot deep moat, and up the %s tower.  At last the %s \n%s was saved and the couple was free to live %s ever after.\n\n',adjective1,occupation1,adjective2,occupation2,type_of_shelter,number1,unit_of_time,adjective2,occupation2,present_verb1,number2,adjective3,adjective1,occupation1,adverb)

filename3=input('\nPlease enter the name of your file','s');

file3=fopen(filename3,'w');
fprintf(file3,'\n\nOnce upon a time there was a/an %s %s who sought the aid of a/an\n%s %s to help her escape from the dreadful %s\nshe has been locked in for the past %s %s. Finally after\nseveral newspaper ads and a couple of smoke signals the %s \n%s %s his way past the fire breathing dragon, through the \n%s foot deep moat, and up the %s tower.  At last the %s \n%s was saved and the couple was free to live %s ever after.\n\n',adjective1,occupation1,adjective2,occupation2,type_of_shelter,number1,unit_of_time,adjective2,occupation2,present_verb1,number2,adjective3,adjective1,occupation1,adverb);
fclose(file3);



end


%Exit command
  exit2=input('\nIf you would like to exit, type exit. If you would like to run the program again type any other word. ','s');
  if exit2 == 'exit'
      a=1;
  end
end

