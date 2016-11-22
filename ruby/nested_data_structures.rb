zoo = {
	birds: {
		tropical: [
			"Cockatoo",
			"Cuckoo",
			"Flamingo",
			"Macaw",
			"Parakeet"
		],
		birds_of_prey: [
			"Eagle",
			"Osprey",
			"Hawk",
			"Falcon"
		]
	},

	mammals: {
		large_cats: [
			"Lion",
			"Tiger",
			"Cheetah",
			"Jaguar"
		],
		apes: [
			"Gorilla",
			"Chimpanzee",
			"Orangutan",
			"Bonobo"
		]
	},

	reptiles: {
		turtles: [
			"Sea Turtle",
			"Box Turtle",
			"Tortoise"
		],
		snakes: [
			"Anaconda",
			"Python",
			"Viper",
			"Cobra"
		],
		lizard: [
			"Lizard",
			"Skink",
			"Iguana",
			"Chameleon",
			"Komodo Dragon"
		],
		crocodiles: [
			"Alligator",
			"Crocodiles"
		]
	}
}

puts zoo[:birds][:tropical][3]
puts zoo[:reptiles][:crocodiles][1]