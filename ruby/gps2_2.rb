# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string into an array
  # create empty hash
  # set each element as a key in the hash
  # set default quantity to 1
  # send result to print method  
# output: hash

def create_list(groceries_string)
	groceries_array = groceries_string.split(" ")
	groceries_hash = {}

	groceries_array.each do |item|
		groceries_hash[item] = 1
	end

	print_list(groceries_hash)
	groceries_hash
end

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: add item to hash
# output: hash

def add_item(groceries_hash, item_name, qty=1)
	groceries_hash[item_name] = qty
end

# Method to remove an item from the list
# input: hash, item name
# steps: compare item with hash keys
# 	# if we find it, delete it
#   # else spit out error message - item not found
# output: hash

def remove_item(groceries_hash, item_name)
	if groceries_hash.include?(item_name)
		groceries_hash.delete(item_name)
	else
		puts "ERROR: Item not found."
	end
end

# Method to update the quantity of an item
# input: hash, item name, quantity
# steps: find item in hash, set value to new qty
# if item doesnt exist, add the new item
# output: hash

def update_quantity(groceries_hash, item_name, qty)
	groceries_hash[item_name] = qty
end

# Method to print a list and make it look pretty
# input: hash
# steps: go through each key in the hash, print key & qty (Lemonade, Qty: 3)
# output: prints a string, returns nil

def print_list(groceries_hash)
	groceries_hash.each do |item, qty|
		puts "#{item}, Qty: #{qty}"
	end
end