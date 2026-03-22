# Write a program to check the passed letter is a vowel or not


# letter = input("Enter any letter to check the passed letter is vowel or not: ")

userInput = input("Enter any alphabet to know it's vowel or not: ")

if (userInput in "aeiou") or (userInput in "AEIOU"):
    print("It's vowel")
else:
    print("It's not a vowel")