#!/bin/bash

## This is a simple calculator script with error handling implemented inside.

addition(){
    if [[ $# -ne 2 ]]; then
        echo "Error: Please provide exactly two numbers for addition."
        return 1
    
    else
        result=$(( $1 + $2))
        echo "The result of addition is: $result"
    fi
    
}

subtraction(){
    if [[ $# -ne 2 ]]; then
        echo "Error: Please provide exactly two numbers for subtraction."
        return 1
    
    else
        result=$(( $1 - $2))
        echo "The result of subtraction is: $result"
    fi
}

multiplication(){
    if [[ $# -ne 2 ]]; then
        echo "Error: Please provide exactly two numbers for multiplication."
        return 1
    
    else
        result=$(( $1 * $2))
        echo "The result of multiplication is: $result"
    fi
}

division(){
    if [[ $# -ne 2 ]]; then
        echo "Error: Please provide exactly two numbers for division."
        return 1
    
    elif [[ $2 -eq 0 ]]; then
        echo "Error: Division by zero is not allowed."
        return 1
    
    else
        result=$(( $1 / $2))
        echo "The result of division is: $result"
    fi
}

## Above are all 4 numerical operations.

## Below is the user input section with error handling implemented inside.

echo "Enter the first number:"
read firstInput
echo "Enter the second number:"
read secondInput
echo "Enter your choice (1-4):"
read choice

echo "You entered: $firstInput and $secondInput and your choice is: $choice"

if [[ ! $firstInput =~ ^-?[0-9]+$ ]] || [[ ! $secondInput =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid numbers."
    exit 1
fi

if [[ $choice -lt 1 || $choice -gt 4 ]]; then
    echo "Error: Invalid choice. Please select a valid operation."
    exit 1
fi

## below calls the function based on the user input and handles errors if any.

if [[ $choice == 1 ]]; then addition "$firstInput" "$secondInput"
elif [[ $choice == 2 ]]; then subtraction "$firstInput" "$secondInput"
elif [[ $choice == 3 ]]; then multiplication "$firstInput" "$secondInput"
elif [[ $choice == 4 ]]; then division "$firstInput" "$secondInput"
else
    echo "Error: Invalid choice. Please select a valid operation."
fi