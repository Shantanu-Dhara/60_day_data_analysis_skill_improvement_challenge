# Assignment 1:String Manipulation Basics Create a Python program that takes a user's full 
# name as input and prints it in reverse order (last name, first name). 
# ● Then, count and display the total number of characters in the full name. 
# ● Finally, extract and display the initials of the first and last names.

full_name = input("Enter your full name: ")
full = full_name.split()




print("Reversed Name:", full[-1], full[0])
print("Total Characters:", len(full_name.replace(" ", "")))
print("Initials:", full[0][0].upper() ," " + full[-1][0].upper())
