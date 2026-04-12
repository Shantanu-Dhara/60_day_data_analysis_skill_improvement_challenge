# Assignment 26: Basic Dictionary Operations 
# Description: In this assignment, you'll practice basic dictionary operations. 
# 1. Create an empty dictionary called student_scores. 
# 2. Add the following student scores to the dictionary: 
# ○ "Alice" scored 95 
# ○ "Bob" scored 88 
# ○ "Charlie" scored 92 
# ○ "David" scored 78 
# 3. Print the scores of all students in the dictionary. 

# 1. Create empty dictionary
student_scores = {}

# 2. Add student scores
student_scores["Alice"] = 95
student_scores["Bob"] = 88
student_scores["Charlie"] = 92
student_scores["David"] = 78

# 3. Print all students and scores
print("Student Scores:")
for name, score in student_scores.items():
    print(name, ":", score)

# 4. Calculate average score
average = sum(student_scores.values()) / len(student_scores)
print("Average Score:", average)

# 5. Add new student Eve
student_scores["Eve"] = 87

# 6. Print updated scores
print("\nUpdated Student Scores:")
for name, score in student_scores.items():
    print(name, ":", score)