class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
		int.times do
			puts "Woof!"
		end
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		human_years * 7
	end

	def chase_tail
		puts "*chases tail*"
	end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.chase_tail

class Frustration_assistant

	def initialize
		puts "You can do it!"
	end

	def cant_focus
		puts "Drink Coffee!"
	end

	def need_help
		puts "Google it!"
	end

end

frustration_assistant_array = []

50.times do |i|
	# puts i
	frustration_assistant_array.push(Frustration_assistant.new)
end


# p frustration_assistant_array.length

frustration_assistant_array.each do |assistant|
	assistant.cant_focus
	assistant.need_help
end