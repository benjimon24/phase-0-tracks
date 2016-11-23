def intro
	puts "This is an example method."
	yield("Ben", "Karan")
	puts "This is step 3"
end

intro { |name1, name2| puts "This is step 2. We are #{name1} and #{name2}."}

places_to_eat = ["ramen", "sushi", "bbq", "thai", "pizza"]
cars = {
	Toyota: "Corolla",
	Honda: "Civic",
	Hyundai: "Sonata",
	Volkswagon: "Beetle",
	Nissan: "Maxima"
}

# puts places_to_eat

places_to_eat.map! do |place|
	place.upcase
end

# puts places_to_eat

places_to_eat.each do |place|
	puts "Let's eat #{place}!"
end

# p cars

cars.each do |key, value|
	puts "Most #{key} owners drive the #{value} model."
end

# p cars 

number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def remove_multiples(integer, array) #remove multiples of parameter
	array.delete_if { |num| num % integer == 0}
end

# p remove_multiples(3, number_array)

def select_factors(integer, array) #select factors of integer within the array
	array.select { |num| integer % num == 0}
end

# p select_factors(8, number_array)

def keep_evens(array)
	array.keep_if { |num| num.even? }
end

# p keep_evens(number_array)

def delete_c(hash)
	hash.delete_if { |key, value| value[0] == "C"}
end

p delete_c(cars)

def drop_under_eight(array)
	array.drop_while { |num| num < 8 }
end

p drop_under_eight(number_array)

#commented out a lot of the calls from the earlier release
#because our program was getting messy when we ran it