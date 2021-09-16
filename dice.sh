randomNumber=$(( RANDOM %5+1 ))
   if [ $randomNumber==1 ]
     then
       echo "one"

   elif [ $randomNumber==2 ]
     then
       echo "two"

   elif [ $randomNumber==3 ]
     then
       echo "three"

   elif [ $randomNumber==4 ]
     then
       echo "four"

   elif [ $randomNumber==5 ]
     then
       echo "five"

   elif [ $randomNumber==6 ]
     then
       echo "six"

    
     else
       echo "zero"
      

    fi