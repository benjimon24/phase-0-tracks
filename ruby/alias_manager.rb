#split the string of the name into an array, with the first and last name as two separate elements
#use reverse to swap the first and last name
#create two global variables - one for consonants, one for vowels
#for the first and last name each, do the following:
#split the word into individual characters 
#use helper method for the following steps
#for each letter, do the following:
#if it is a consonant, change it to the next consonant in the alphabet
#if it is a vowel, change it to the next vowel in the alphabet
#we can do this by finding the index of the current letter in the global array variable,
#then setting it to the next letter in our global array variable
#join the letters together, then join the two parts of the name back together

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z) #y shall be a consonant
VOWELS = %w(a e i o u) 

def alias_maker(real_name)
	fake_name = real_name.split.reverse # split the name into a two-element array, then reverse it
	
	fake_name.map! do |partial_name| #part of the name - first or last
	partial_name = partial_name.downcase.split("") #put everything in lower case, then split it
		partial_name.map! do |i| #change each letter to the next letter
			i = next_letter(i)
		end
		partial_name.join("").capitalize! #capitalize it back and join all the letters back together
	end 
	
	fake_name.join(" ")
end

def next_letter(letter) #does not account for capitalized letters - must downcase before using this method
	if VOWELS.include?(letter)
		return VOWELS[(VOWELS.index(letter) + 1) % 5] #use mod function so that it goes back to the beginning if we're on the last letter
	else
		return CONSONANTS[(CONSONANTS.index(letter) + 1) % 21]
	end
end
# puts next_letter("a")
# puts next_letter("e")
# puts next_letter("f")
# puts next_letter("s")


puts alias_maker("Felicia Torres")