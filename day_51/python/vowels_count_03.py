# Q3. Write a Python program to Count Vowels in a String?


def count_vowels(str): 
# Define vowels 
    vowels = "aeiouAEIOU" 
# Initialize count 
    count = 0 
# Count vowels 
    for char in str: 
        if char in vowels: 
            count += 1 
    return count 

# Example usage 
input_string = "Hello, World!" 
vowel_count = count_vowels(input_string) 
print("Number of vowels in the string:", vowel_count) 