echo "Welcome to Employee Wage Computation"
Fulltime=0
Parttime=1
isAbsent=2
empwageperhr=20
empcheck=$((RANDOM%3))
case $empcheck in
       $Fulltime)
       workinghr=8
       echo "Employee is Fulltime"
       ;;
       $Parttime)
       workinghr=4
       echo "Employee is Parttime"
       ;;
       $isAbsent)
       workinghr=0
       echo "Employee is Absent"
       ;;
esac
 employeewage=$((empwageperhr*workinghr))
echo "Employee Wage: " $employeewage
