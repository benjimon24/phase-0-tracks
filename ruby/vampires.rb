puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = 0
while i < employees do 
	puts "What is your name?"
		name = gets.chomp
	puts "How old are you?"
		age = gets.chomp.to_i
	puts "What year were you born?"
		year = gets.chomp.to_i
			if 2016 - year == age
				age = true
			else age = false
			end
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
		garlic = gets.chomp
			if garlic == "yes"
				garlic = true
			elsif garlic == "no"
				garlic = false
			end
	puts "Would you like to enroll in the company’s health insurance? (yes or no)"
		insurance = gets.chomp
			if insurance == "yes"
				insurance = true
			elsif insurance == "no"
				insurance = false
			end

	if age && (garlic || insurance)
		result = "Probably not a vampire"
	elsif !age && (!garlic || !insurance)
		result = "Probably a vampire"
	elsif !age && !garlic && !insurance
		result = "Almost certainly a vampire"
	else result = "Results inconclusive"
	end
	result = "Definitely a vampire" if name == "Drake Cula" || name == "Tu Fang"

	puts "Please name all your allergies, type 'done' when you are finished."
		allergy = gets.chomp
		until allergy == "done"
			if allergy == "sunshine"
				result = "Probably a vampire" 
				break
			end
			allergy = gets.chomp
		end

	puts result
	i += 1
end

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."