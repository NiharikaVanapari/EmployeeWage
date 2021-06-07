echo "Welcome to Employee Wage Computation"
isPresent=0
isAbsent=1
empwageperhr=20
empcheck=$((RANDOM%2))
if [ $isPresent -eq $empcheck ]
then 
    workinghr=8
     echo "Employee is Present"
else
    workinghr=0
     echo "Employee is Absent"

fi
 employeewage=$((empwageperhr*workinghr))
echo "Employee Wage: " $employeewage
