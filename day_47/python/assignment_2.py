# Assignment 2:String Searching and Replacing: 

# ● Given a text containing a sample paragraph of text. 
# ● Write a Python program that reads this paragraph and searches for a “specific word” and 
# display the number of occurrence of that word. 
# ● Replace all occurrences of the word with “replace with” word and display the modified text. 

# Given Paragraph: Python is commonly used for developing websites and software, task 
# automation, data analysis, and data visualization. Since it's relatively easy to learn, Python has 
# been adopted by many non-programmers such as accountants and scientists, for a variety of 
# everyday tasks, like organizing finances 

# Specific word: Python 
# Replace with : PYTHON


# Method 1: Using regular expressions

# Given paragraph
paragraph = """Python is commonly used for developing websites and software, task
automation, data analysis, and data visualization. Since it's relatively easy to learn, Python has
been adopted by many non-programmers such as accountants and scientists, for a variety of
everyday tasks, like organizing finances"""

# Specific word and replacement
word = "Python"
replace_word = "PYTHON"

# Count occurrences
count = paragraph.count(word)
print("Number of occurrences:", count)

# Replace word
modified_text = paragraph.replace(word, replace_word)

print("\nModified Paragraph:\n")
print(modified_text)

# Method 2: Using count() and replace() methods
paragraph = """Python is commonly used for developing websites and software..."""

print("Occurrences:", paragraph.count("Python"))
print("Modified Text:") 
print(paragraph.replace("Python", "PYTHON"))