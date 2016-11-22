#prompt user for name, age, number of children, decor theme, budget, gender, marital status
#use to_i and other conversion methods to change user input to appropriate data type
#print out all recorded information
#ask user for any updates
#print the hash again

info = {}

puts "What is your name?"
info[:name] = gets.chomp

puts "How old are you?"
info[:age] = gets.chomp.to_i

puts "What is your gender?"
info[:gender] = gets.chomp

puts "Are you married? (yes or no)"
reply = gets.chomp

until reply == "yes" || reply == "no"
	puts "Please type yes or no"
	reply = gets.chomp
end

if reply == "yes"
	info[:marriage] = true
elsif reply == "no"
	info[:marriage] = false
end

puts "How many children do you have?"
info[:children] = gets.chomp.to_i

puts "What is your budget?"
info[:budget] = gets.chomp.to_i

puts "What would you like as your decor theme?"
info[:theme] = gets.chomp

puts info

puts "Are there any changes you would like to make to this form?/n 
You may (Type 'none' if there are no changes to be made.)"
	reply = gets.chomp
	valid_replies = ["name", "age", "gender", "marriage", "children", "budget", "theme", "none"]

	until valid_replies.include?(reply)
		puts "Please input a valid reply."
		reply = gets.chomp
	end

	unless reply == "none"
		puts "What would you like to change it to?"
		new_value = gets.chomp
		info[reply.to_sym] = new_value
	end

puts info

	# if reply == "name"
	# 	puts "What is your name?"
	# 	info[:name] = gets.chomp
	# elsif reply == "age"
	# 	puts "How old are you?"
	# 	info[:age] = gets.chomp.to_i
	# elsif reply == "gender"
	# 	puts "What is your gender?"
	# 	info[:gender] = gets.chomp
	# elsif reply == marriage
	# 	puts "Are you married? (yes or no)"
	# 	reply = gets.chomp

	# 		until reply == "yes" || reply == "no"
	# 			puts "Please type yes or no"
	# 			reply = gets.chomp
	# 		end

	# 		if reply == "yes"
	# 			info[:marriage] = true
	# 		elsif reply == "no"
	# 			info[:marriage] = false
	# 		end

	# elsif reply == "children"
	# 	puts "How many children do you have?"
	# 	info[:children] = gets.chomp.to_i
	# elsif reply == "budget"
	# 	puts "What is your budget?"
	# 	info[:budget] = gets.chomp.to_i
	# elsif reply == "theme"
	# 	puts "What would you like as your decor theme?"
	# 	info[:theme] = gets.chomp
	# elsif reply == "none"