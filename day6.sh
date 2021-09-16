SEASON=2020
MATCHES_PLAYED=14
position=0
win=0
lose=0
runRate=""
points=0
message="Eligible For PlayOffs"
read -p "***** Enter Your Favourite Team Here ***** " teamName


 function errorMessage() {
   echo " Please Check Your Characters, It's Not Matching Our Creteria :( "
   echo " Team Code Should Be "
   echo " Mumbai Indians =====> MI"
   echo " Chennai Super Kings =====> CSK"
   echo " Royal Challengers Bangalore =====> RCB"
   echo " Sunrishers Hyderabad =====> SRH"
   echo " Kolkatta Knight Riders =====> KKR"
   echo " Rajasthan Royals =====> RR"
   echo " Kings XI Punjab =====> PBKS"
   echo " Delhi Capitals =====> DC"
 }


if [ $teamName == "MI" ]
then
    position=1
elif [ $teamName == "DC" ]
then
    position=2
elif [ $teamName == "SRH" ]
then
    position=3
elif [ $teamName == "RCB" ]
then
    position=4
elif [ $teamName == "KKR" ]
then
    position=5
elif [ $teamName == "PBKS" ]
then
    position=6
elif [ $teamName == "CSK" ]
then
    position=7
elif [ $teamName == "RR" ]
then
    position=8
else
    errorMessage
fi




 function getPointsCalculation() {
      lose=$((MATCHES_PLAYED-win))
      points=$((win*2))
      echo "IPL $SEASON"
      echo "Place Secured : $position"
      echo "Team Name : $teamName"
      echo "Matched Played : $MATCHES_PLAYED"
      echo "Won : $win"
      echo "Lost : $lose"
      echo "NRR : $runRate"
      echo "Points : $points"


 }


case $position in
   1)
      win=9
      runRate="+1.107"
      getPointsCalculation
      ;;
   2)
      win=8
      runRate="-1.109"
      getPointsCalculation
      ;;
   3)
      win=7
      runRate="+0.608"
      getPointsCalculation
      ;;
   4)
      win=7
      runRate="-0.172"
      getPointsCalculation
      ;;
   5)
      win=7
      runRate="-0.214"
      getPointsCalculation
      ;;
   6)
      win=6
      runRate="-0.162"
      getPointsCalculation
      ;;
   7)
      win=6
      runRate="-0.455"
      getPointsCalculation
      ;;
   8)
      win=6
      runRate="-0.569"
      getPointsCalculation
      ;;
   *)


     ;;
esac




                   if [[ $position != 0 && $position -le 4 ]]
                   then
                       echo "$teamName $message :) "
                   elif [ $position -gt 4 ]
                   then
                       echo "$teamName Not $message :( "
                   fi