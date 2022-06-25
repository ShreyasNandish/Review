#!/bin/bash -x

is_palindrome ()
{
    num=$1
    num1=$num
    rev=0
    while (( num > 0 ))
    do
        remainder=$(( num % 10))
        rev=$(( rev * 10 + remainder ))
        (( num /= 10 ))

    done
    if(( rev == num1))
    then
        echo "$num1 is palindrome"
    else
        echo "$num1 is not palindrome"
    fi
}

read -p "Enter number:" number
is_palindrome $number

