# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array
  # create empty hash
  # set each element as a key in the hash
  # set default quantity to 1
  # send result to print method  
# output: hash

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: add item to hash
# output: hash

# Method to remove an item from the list
# input: hash, item name
# steps: compare item with hash keys
# 	# if we find it, delete it
#   # else spit out error message - item not found
# output: hash

# Method to update the quantity of an item
# input: hash, item name, quantity
# steps: find item in hash, set value to new qty
# if item doesnt exist, add the new item
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps: go through each key in the hash, print key & qty (Lemonade, Qty: 3)
# output: prints a string, returns nil

