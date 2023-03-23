WAGE_PER_HOUR=20
FULL_DAY_HOURS=8
PART_TIME_HOURS=4
ABSENT=0

# Variables
empHours=0
empWage=0

# Randomly generate the employee attendance status
attendance=$(( RANDOM%3 ))

# Check the employee's attendance status and calculate the working hours accordingly
case $attendance in
	1)
		echo "Employee is present for full day"
		empHours=$FULL_DAY_HOURS
		;;
	2)
		echo "Employee is present for part-time"
		empHours=$PART_TIME_HOURS
		;;
	*)
		echo "Employee is absent"
		empHours=$ABSENT
		;;
esac

# Calculate the employee's wage based on the working hours and wage per hour
empWage=$(( empHours * WAGE_PER_HOUR ))


echo "Employee Wage: $empWage"
