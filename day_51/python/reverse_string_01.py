# Q1. Write a Python program to Reverse a String?

# Method 1: Using slicing

str = input("Enter a string: ")
reversed_str = str[::-1]
print("Reversed string: ", reversed_str)

# Method 2: Using a loop
def reverse_string(s):
    reversed_str = ""
    for char in s:
        reversed_str = char + reversed_str
    return reversed_str

# Example usage
input_string = "Hello, World!"
reversed_string = reverse_string(input_string)
print("Original string:", input_string)
print("Reversed string:", reversed_string)

# Method 3: 

def strReversal(s):
    return s[::-1]

# Example usage
input_str = "Shantanu"
reversed_str = strReversal(input_str)
print("Original string:", input_str)
print("Reversed string:", reversed_str)