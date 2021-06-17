echo "Welcome to Employee Wage Computation"
declare -a dailywage
Fulltime=0
Parttime=1
isAbsent=2
empwageperhr=20
workingdays=20
maxHrsinMonth=100
monthsalary=0
TotalWorkingHr=0

function getWorkingHrs() {
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

 	echo $workinghr
}
for (( i=0; i<20 && $TotalWorkingHr<100; i++ ))
do
 	empcheck=$((RANDOM%3))
	workinghr="$( getWorkingHrs $empcheck )"
	dailywage[i]=$((workinghr*empwageperhr))
	TotalWorkingHr=$((TotalWorkingHr+workinghr))
	echo "Day$((i+1)) wage: ${dailywage[i]}"
done

echo "Employee Daily Wage : ${dailywage[@]}"
monthsalary=$((empwageperhr*TotalWorkingHr))
echo "Employee Monthly Wage:  $monthsalary"
