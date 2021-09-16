randomNumber=$(( RANDOM %3 ))
   if [ $randomNumber==1 ]
     then
       echo "one"
    elif [ $randomNumber==2 ]
     then
       echo "two"
     else
       echo "zero"
      

    fi
