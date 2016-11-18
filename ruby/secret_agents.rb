#create encrypt method

def encrypt(string)
	i = 0
	new_string = ""

	while i < string.length
		if string[i] == "z"
			next_char = "a"
		else
		next_char = string[i].next
		end
		new_string += next_char
		i += 1
	end

	new_string
end


#so we should get the index of each letter
#use next method on each letter
#put letter into a new string
#return new string


#declare global variable for alphabet
#make decrypt method
#iterate through a string
#take alphabetical index of a letter
#add to new string

ALPHABET = "abcdefghijklmnopqrstuvwxyz"

def decrypt(string)
	i = 0
	new_string = ""
	while i < string.length
		if string[i] == "a"
			previous_char = "z"
		else
			previous_char = ALPHABET[ALPHABET.index(string[i]) - 1]
		end
		
		new_string += previous_char
		i += 1
	end

	new_string
end

# #this works because it process the result of the inside method first then it process that into a the other method.

#ask the user if they want to encrypt or decrypt
puts "would you like to encrypt or decrypt"
answer = gets.chomp.downcase

#Asks the user for a password
puts "What is the password"
password = gets.chomp

#picks a method based on their response for question 1
if answer == "encrypt"
	puts encrypt(password)
elsif answer == "decrypt"
	puts decrypt(password)
else
	puts "come again?"
	answer = gets.chomp.downcase
end