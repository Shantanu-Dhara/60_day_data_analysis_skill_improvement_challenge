# Assignment 25: Set Manipulation and Filtering Design a Python program that explores set 
# manipulation and filtering: 
# 1. Create a set named original_set containing at least 15 elements (numbers, strings, 
# or a mix of both). 

orignal_set = {"Shantanu", 10, 1.2, 9, 20, "Roy",10, "Bubai", 1.2, 0, "Rakesh", 9}

# 2. Write a function that removes duplicates from original_set and stores the result in a 
# new set, unique_set. 

def create_unique_set(data):
    new_set = set(data)
    return new_set

unique_set = create_unique_set(orignal_set)
print(unique_set)

# 3. Implement a function that filters unique_set to include only elements that meet a 
# specific condition (e.g., selecting only even numbers or strings starting with a vowel).

def filter_even_numbers(data):
    filtered_set = set()
    
    for i in data:
        if type(i) == int and i % 2 == 0:
            filtered_set.add(i)
    
    return filtered_set

even_number = filter_even_numbers(unique_set)
print(even_number)

# 4. Write a function that calculates and prints the sum of all numeric elements in the filtered 
# set. 

def numeric_number_sum(even_number):
    total = 0
    for i in even_number:
        if i in even_number:
            total += i
    return total

numeric_number_total = numeric_number_sum(even_number)
print(numeric_number_total)

# 5. Create a set, filtered_set2, by applying a different filter condition (e.g., selecting 
# elements containing a specific substring). 

def filter_strings(data):
    filtered_set2 = set()
    
    for i in data:
        if type(i) == str and i.startswith('R'):
            filtered_set2.add(i)
    
    return filtered_set2

filtered_set2 = filter_strings(unique_set)
print(filtered_set2)

# 6. Write a function to find and print the intersection of filtered_set and 
# filtered_set2. 

set1 = {10, 20, 30}
set2 = {10, 30}

def find_intersection(set1, set2):
    return set1 & set2
  # return set1.intersection(set2)

c = find_intersection(set1, set2)
print(c)


# 7. Print the contents of filtered_set, filtered_set2, and the intersection.


