# Assignment 4:String Formatting and Validation: 
# ● Design a program that validates email addresses entered by users. 
# ● Prompt the user for an email address and check if it follows the standard email format 
# (e.g., contains "@" and "."). 
# ● Display a message indicating whether the email is valid or not. 
# Valid email format : your_name.surname@gmail.com 


email = input("Enter your email address here: ")

if "@" in email and "." in email:
    print("Valid email address")
else:
    print("Invalid email address")