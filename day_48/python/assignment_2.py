# Assignment 27: Dictionary Manipulation 
# Description: In this assignment, you'll perform more advanced dictionary operations. 
# 1. Create a dictionary called inventory with the following items and their respective 
# quantities: 
# ○ "apples": 50 
# ○ "bananas": 75 
# ○ "oranges": 100 
# ○ "grapes": 30
# 2. Write a function update_inventory(item, quantity) that takes an item and a 
# quantity as arguments and updates the inventory accordingly. If the item already exists, 
# add the quantity to the existing quantity. If the item doesn't exist, add it to the inventory. 
# 3. Test your update_inventory function by adding 20 more apples, 10 more bananas, 
# and 15 pineapples to the inventory. 
# 4. Write a function print_inventory() that prints the current inventory in a user-friendly 
# format (e.g., "Item: Quantity"). 
# 5. Use the print_inventory function to display the updated inventory.

# 1. Create inventory dictionary
inventory = {
    "apples": 50,
    "bananas": 75,
    "oranges": 100,
    "grapes": 30
}

# 2. Function to update inventory
def update_inventory(item, quantity):
    if item in inventory:
        inventory[item] += quantity   # Add to existing
    else:
        inventory[item] = quantity    # Add new item

# 3. Test function
update_inventory("apples", 20)
update_inventory("bananas", 10)
update_inventory("pineapples", 15)

# 4. Function to print inventory
def print_inventory():
    print("Current Inventory:")
    for item, quantity in inventory.items():
        print(f"{item.capitalize()} : {quantity}")

# 5. Display updated inventory
print_inventory()