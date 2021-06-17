echo "Welcome to Employee Wage Computation"
declare -a employeedailywage
Fulltime=0
Parttime=1
isAbsent=2
monthsalary=0
empwageperhr=20
counter=0
#assume 20 working days in a month
for (( i=0; i<20; i++ ))
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
 	employeedailywage[((counter++))]=$((empwageperhr*workinghr))
done
echo "Employee Daily Wage : ${employeedailywage[@]}"
for (( i=0; i<20; i++ ))
do
	sal=${employeedailywage[i]}
	monthsalary=$((monthsalary+sal))
done
echo "Employee Monthly Wage:  $monthsalary"
