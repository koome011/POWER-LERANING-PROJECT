# Creating an empty list
my_list = []
# appending elements to the list
numbers = [10, 20, 30, 40]

for num in numbers:
    my_list.append(num)
print(my_list)

# Inserting the value 15 at the second position in the lis
my_list.insert(2, 15)
print(my_list)

# Extending my_list
list_extension = [50, 60, 70]

my_list.extend(list_extension)
print(my_list)

# Removing the last element in my_list
del my_list[-1]
print(my_list)

# Sorting my list in ascending order
my_list.sort()
print(my_list)

# finding and printing the value 30 in my_list
print(my_list.index(30))
print(my_list)