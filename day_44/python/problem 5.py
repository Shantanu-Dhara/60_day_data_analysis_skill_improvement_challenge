# Write a program to check if a number is a single digit number or 2 digit number

userInput = int(input("Enter any number to check the number is single digit or double digit number or" \
" triple digit number: "))

if userInput >= 0 and userInput <= 9:
    print("It's a single digit number")
elif userInput > 9 and userInput <= 99:
    print("It's a double digit number")
elif userInput > 99 and userInput <= 999:
    print("It's a triple digit number")
else:
    print("Invalid number")