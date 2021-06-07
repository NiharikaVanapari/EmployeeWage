echo "Welcome to Employee Wage Computation"
Fulltime=0
Parttime=1
isAbsent=2
empwageperhr=20
empcheck=$((RANDOM%3))
if [ $Fulltime -eq $empcheck ]
then 
    workinghr=8
     echo "Employee is Fulltime"
elif [ $Parttime -eq $empcheck ]
then
    workinghr=4
     echo "Employee is Parttime"

else
    workinghr=0
     echo "Employee is Absent"

fi
 employeewage=$((empwageperhr*workinghr))
echo "Employee Wage: " $employeewage
