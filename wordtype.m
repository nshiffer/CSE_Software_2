function [word] = wordtype(root)
%This funtion will ask the user to enter a designated type of word
%corresponding to a given in the MADLIB game. 
switch root
    case 'adjective'
        word=input('Please enter an adjective.\n','s');
    case 'name'
        word=input('Please enter a noun.\n','s');
    case 'animal'
        word=input('Please enter an animal.\n','s');
    case 'activity class'
        word=input('Please enter a class.\n','s');
    case 'past tense verb'
        word=input('Please enter a past tense verb.\n','s');
    case 'place'
        word=input('Please enter a place.\n','s');
    case 'place on campus'
        word=input('Please enter a place on the OSU campus.\n','s');
    case 'plural noun'
        word=input('Please enter a plural noun.\n','s');
    case 'game sport'
        word=input('Please enter a kind of sport.\n','s');
    case 'present verb'
        word=input('Please enter a present verb.\n','s');
    case 'family member'
        word=input('Please enter a family member.\n','s');
    case 'occupation'
        word=input('Please enter an occupation.\n','s');
    case 'type of shelter'
        word=input('Please enter a type of shelter.\n','s');
    case 'adverb'
        word=input('Please enter an adverb.\n','s');
    case 'noun'
        word=input('Please enter a noun.\n','s');
    case 'number'
        word=input('Please enter a number.\n','s');
    case 'unit of time'
        word=input('Please enter a number.\n','s');
    case 'verb'
        word=input('Please enter a verb.\n','s');
  
        
end

