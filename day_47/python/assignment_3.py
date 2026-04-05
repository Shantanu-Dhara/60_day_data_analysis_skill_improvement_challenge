# Assignment 3: Palindrome Checker: 
# ● Create a Python function that checks if a given string is a palindrome (reads the same 
# forwards and backwards). 
# ● Prompt the user for a string and use the function to determine if it's a palindrome. 
# ● Display an appropriate message indicating whether the input is a palindrome or not.


def palindrome_checker(str):
    str = input("Enter any string to check it's palindrome or not: ")
    if str[::-1] == str:
        print(str)
    else:
        print("Not an palindrome")


print(palindrome_checker(str))