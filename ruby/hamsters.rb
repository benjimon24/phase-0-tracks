puts "what is the hamsters name?"
name = gets.chomp

puts "What is the volume level from 1 to 10?"
volume = gets.chomp.to_i

while !(1..10).include?(volume)
  puts "This number is not in range"
  volume = gets.chomp.to_i
end
#shaun yee and i tried to figure out how to restrict the user input between 1-10. we later realized this wasnt necessary and gave up on it
#i later went back to figure it out and shared my findings with him and updated the code above with it

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
