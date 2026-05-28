# Q2. Write a Python program to Check Palindrome?

# Method 1: For string 
def is_palindrome(s): 
    # Remove spaces and convert to lowercase for case-insensitive comparison
    s = s.replace(" ", "").lower()
    return s == s[::-1]

# Example usage
input_string = "A man, a plan, a canal, Panama"
if is_palindrome(input_string):
    print("The string is a palindrome.")
else:
    print("The string is not a palindrome.")

#  Method 2: For Numbers
def is_palindrome(number):
    # Convert number to string for easy manipulation
    num_str = str(number)
    return num_str == num_str[::-1]

# Example usage
input_number = 12321
if is_palindrome(input_number):
    print("The number is a palindrome.")
else:
    print("The number is not a palindrome.")

    