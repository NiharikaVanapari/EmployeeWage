echo "Welcome to Employee Wage Computation"
Fulltime=0
Parttime=1
isAbsent=2
empwageperhr=20
workingdays=20
maxHrsinMonth=100
monthsalary=0
TotalWorkingHr=0

for (( i=0; i<20 && $TotalWorkingHr<100; i++ ))
do
	empcheck=$((RANDOM%3))
	case $empcheck in
       	     $Fulltime)
       		workinghr=8
     		;;
             $Parttime)
       		workinghr=4
       		;;
             $isAbsent)
       		workinghr=0
       		;;
	esac
 	TotalWorkingHr=$((TotalWorkingHr+workinghr))
done
monthsalary=$((empwageperhr*TotalWorkingHr))
echo "Employee Monthly Wage:  $monthsalary"
