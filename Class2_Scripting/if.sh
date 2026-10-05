
echo "Please use cat if.sh to see the notes and comments on if, else and elif statements in bash scripting."

#!/bin/bash

# if starts with if and ends with fi.
#Order is If, then, Fi.

# Make sure you add space between the brackets and the variable name. E.g [ $age -lt 30 ] and not [$age -lt 30]
# eq == equals, lt == less than, gt == greater than, ne == not equal to, le == less than or equal to, ge == greater than or equal to

# && AND || OR

# if using && or || then use two seperare conditions. E.g if [ $age -lt 30 ] && [ $age -gt 20 ]

# Comparison operators are == which is equal to, != which is not equal to.
# Example of comparison operators: if [ $age == 25 ] || [ $age != 30 ].

age=29

if [ $age -lt 30 ]
then
echo "you are less than 30"
else
echo "you are greater than 30"
fi


# elif part of learning below.

# elif does not need a then statement. It is used to check multiple conditions.

if [ $age == 25 ]
    then 
    echo "you are 25, Same as me :)"
elif [ $age -lt 30 ]
    then
    echo "you are less than 30, you are $age"
else
    echo "you are greater than 30"
fi