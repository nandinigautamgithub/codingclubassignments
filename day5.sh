number=$((RANDOM%3))


isFullTime=1
isPartTime=2
salary=0
hoursInFulltime=8
hoursInParttime=4
economyPerHour=100




if [ $number -eq $isFullTime ]
then
     salary=$((hoursInFulltime*economyPerHour))
     echo "Employee Present as a Full-Time Job"
     echo "Salary Is $salary"
elif [ $number -eq $isPartTime ]
then
     salary=$((hoursInParttime*economyPerHour))
     echo "Employee Present as a Part-Time Job"
     echo "Salary Is $salary"
else
     echo "Employee Absent"
     echo "Salary Is $salary"
fi
 
