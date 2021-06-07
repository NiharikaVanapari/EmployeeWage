echo "Welcome to Employee Wage Computation"
isPresent=0
isAbsent=1
empcheck=$((RANDOM%2))
if [ $isPresent -eq $empcheck ]
then 
     echo "Employee is Present"
else
     echo "Employee is Absent"
fi

