puts "what is the hamsters name?"
name = gets.chomp

puts "What is the volume level from 1 to 10?"

	#while gets.chomp.to_i < 0 || gets.chomp.to_i > 11
		#puts "This number is not in range"
	#end
	#loop was not working, not sure how to fix it...
	volume = gets.chomp.to_i


puts "what is the fur color?"
fur_color = gets.chomp

puts "is this hamster good for adoption"
adoption = gets.chomp
	if adoption == "yes"
		adoption = true
	elsif adoption == "no"
		adoption = false
	end


puts "what is the hamsters estimated age?"
age = gets.chomp.to_i
if age == ""
	age = nil
end

puts name
puts volume
puts fur_color
puts adoption
puts age