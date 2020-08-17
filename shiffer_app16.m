%************************************************
%*  Name:  Nick Shiffer   Date:  10/2/17        *
%*  Seat:  11    File:  APP_A16_1_.m             *
%*  Instructor:  Dr Harper 10:20Am              *
%************************************************
fprintf ('\n')
fprintf ('\n************************************************')
fprintf ('\n*  Name:  Nick Shiffer   Date:  10/2/17        *')
fprintf ('\n*  Seat:  11    File:  APP_A16_1_.m           *')
fprintf ('\n*  Instructor:  Dr. Harper 10:20AM             *')
fprintf ('\n************************************************')
fprintf ('\n')
%while loop for program until user decides to quit
%assign begining variables 
a='o';
while(a~='quit')
    %use switch case to prompt user for shape
    shape = input('For what shape would you like to find the Moment of Inertia?\n Please type R for a rectangle, H for a hollow rectangular section, and C for a Circle: ','s');
    switch shape
        case 'R'
            %prompt for axis
            axisR=input('Please enter the axis of the moment of inertia. Use xx or yy. ','s');
            %prompt for units
            unitsR=input('Please enter the appropriate units. ','s');
            %prompt for inputs
            inputRb=input('Please enter the base of the rectangle');
            inputRd=input('Please enter the length of the side');
            if(axisR=='xx')
               inertiaRxx = (inputRb * (inputRd)^3)/12;
               fprintf(1,'A rectangle, on the xx axis, with a base measurment of %f %s and a length measurement of %f %s has a moment of inertia of %f %s ^4 \n',inputRb,unitsR, inputRd, unitsR,inertiaRxx,unitsR)
            elseif(axisR=='yy')
               inertiaRyy = ((inputRb)^3 * inputRd)/12;
               fprintf(1,'A rectangle, on the xx axis, with a base measurment of %f %s and a length measurement of %f %s has a moment of inertia of %f %s ^4 \n',inputRb,unitsR,inputRd,unitsR,inertiaRyy,unitsR)
            end
        case 'H'
            %prompt for axis
            axisH=input('Please enter the axis of the moment of inertia. Use xx or yy. ','s');
            %prompt for units
            unitsH=input('Please enter the appropriate units. ','s');
            %prompt for inputs
            inputHb=input('Please enter the base of the rectangle');
            inputHd=input('Please enter the length of the side');
            inputHhb=input('Please enter the base of the hollow section of the rectangle');
            inputHhd=input('Please enter the length of the hollow section of the rectangle');
            if(axisH=='xx')
               inertiaHxx = ((inputHb * (inputHd)^3)/12)-((inputHhb * (inputHhd)^3)/12);
               fprintf(1,'A hollow rectangle, on the xx axis, with a base measurment of %f %s, a length measurement of %f %s, a hollow base of %f %s and a hollow length of %f %s has a moment of inertia of %f %s ^4 \n',inputHb,unitsH, inputHd,unitsH,inputHhb,unitsH, inputHhd,unitsH,inertiaHxx,unitsH)
            elseif(axisH=='yy')
               inertiaHyy = ((inputHb * (inputHd)^3)/12)-(inputHb * (inputHd)^3)/12;
               fprintf(1,'A hollow rectangle, on the yy axis, with a base measurment of %f %s, a length measurement of %f %s, a hollow base of %f %s and a hollow length of %f %s has a moment of inertia of %f %s ^4 \n',inputHb,unitsH, inputHd,unitsH,inputHhb,unitsH, inputHhd,unitsH,inertiaHyy,unitsH)
            end
        case 'C'
            %prompt for units
            unitsC=input('Please enter the appropriate units. ','s');
            %prompt for inputs
            inputCd=input('Please enter the diameter of the circle. ');
            inertiaC = (pi()* (inputCd)^3)/64;
            fprintf(1,'A circle, on either axis, with a diameter measurment of %f %s has a moment of inertia of %f %s ^4 \n',inputCd,unitsC,inertiaC,unitsC)
            
        otherwise 
            shape=input('You have not entered a valid shape, please enter R,H, or C: ','s');
    end
    a=input('If you would like to quit type "quit"\n If you would like to continue type any other word. ','s');   
end