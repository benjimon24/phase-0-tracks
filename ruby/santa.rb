class Santa
	#attr_reader  #allows reading
	attr_accessor :ethnicity, :age, :gender #allows reading AND writing
	#attr_writer is for writable, but not readable - generally not used

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", 
												 "Dasher", 
												 "Dancer", 
												 "Prancer", 
												 "Vixen", 
												 "Comet", 
												 "Cupid", 
												 "Donner", 
												 "Blitzen"
												]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

end

# sam = Santa.new("Male", "Amorphous Blob")
# sam.speak
# sam.celebrate_birthday
# sam.eat_milk_and_cookies("Chocolate Chip Cookie")
# puts "Sam is a #{sam.age} year old #{sam.ethnicity}"
# sam.gender = "Female"

# santas = []
# santas << Santa.new("Apache Helicopter", "ethnic-fluid")
# santas << Santa.new("Genderless", "space-whale")
# santas << Santa.new("Gender-Malleable", "bird with arms")
# santas << Santa.new("Hermaphrodite", "fish with legs")

genders = ["female", 
					 "male",
					 "gender fluid"]
ethnicities = ["Black", 
							 "Latino", 
							 "Caucasian", 
							 "Asian", 
							 "Dragonbound",
							 "Elf",
							 "Dwarf",
							 "Giant",
							 "Orc",
							 "Seafolk"]

santas = []
100.times do |new_santa|
	new_santa = Santa.new(genders.sample, ethnicities.sample)
	new_santa.age = rand(140)
	puts "This Santa is a #{new_santa.age} year old, #{new_santa.gender} #{new_santa.ethnicity}."
end