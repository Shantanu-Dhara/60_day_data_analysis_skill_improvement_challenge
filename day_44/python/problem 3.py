# Write a program to create a area calculator

print("****AREA CALCULATOR****")
print("""Press 1 to get the area of the square
      Press 2 to get the area of the rectangle
      Press 3 to get the area of the circle
      Press 4 to get the area of the tringle""")

choice = int(input("Press any number between 1-4: "))

if choice == 1:
    side = float(input("Enter the length of the square: "))
    area = side**2
    print("The area of square is:", area)
elif choice == 2:
    height = float(input("Enter the height of the rectangle: "))
    width = float(input("Enter the width of the rectangle: "))
    area = height*width
    print(area) 
elif choice == 3:
    radious = float(input("Enter the radious of the circle: "))
    area = (22/7) * (radious**2)
    print("The area of the circle is: ", area)
elif choice == 4:
    base = float(input("Enter the base of the tringle: "))
    height = float(input("Enter the hight of the one side: "))
    area = 0.5*base*height
    print("The area of the tringle is: ", area)
else:
    print("Enter invalid input")
   
