require 'sqlite3'
require 'faker'
require 'date'

job_tracker = SQLite3::Database.new("job_tracker.db")
job_tracker.results_as_hash = true

test = <<-SQL
  CREATE TABLE IF NOT EXISTS applications(
	  id INTEGER PRIMARY KEY,
	  company VARCHAR(255),
	  position VARCHAR(255),
	  contact VARCHAR(255),
	  email VARCHAR(255),
	  application_date VARCHAR(255),
	  status VARCHAR(255)
	)
	SQL

job_tracker.execute(test)



# add_job(job_tracker, "Google", "CEO", Faker::Name.name, Faker::Internet.email)

def display_commands
	puts "Here are a list of commands:"
	puts "  commands - display a list of your commands"
	puts "  add - add a new application"
	puts "  update - update a field of a current application"
	puts "  remove - remove an application"
	puts "  list - lists all positions"
	puts "  find - find an application on the list"
	puts "  exit - exit the program"
end

def add_job(database) #, company, position, contact, email)
	puts "What position would you like to add?"
	position = gets.chomp
	puts "What company is this position for?"
	company = gets.chomp
	puts "Who is your contact for this position?"
	contact = gets.chomp
	puts "What is this contact's email?"
	email = gets.chomp
	database.execute("INSERT INTO applications (company, position, contact, email, application_date, status) VALUES (?, ?, ?, ?, ?, 'Awaiting')", [company, position, contact, email, DateTime.now.strftime('%B %d, %Y')])
	puts "You have added the #{position} position at #{company} to the tracker on #{DateTime.now.strftime('%B %d, %Y')}."
end

VALID_FIELDS = %w(company position contact email date status)

def update_job(database)
	puts "What is the index of the position you would like to update?"
	idx = gets.chomp.to_i
	puts "Which field would you like to update? (company, position, contact, email, date, or status)"
	field = gets.chomp

	until VALID_FIELDS.include?(field)
		puts "Please enter a valid field."
		field = gets.chomp
	end

	puts "What would you like to update that field to?"
	updated = gets.chomp

	command = "UPDATE applications SET #{field}='#{updated}' WHERE id=#{idx}"
	database.execute(command)

	puts "Your job application has been updated. It is now:"
	list_cmd = "SELECT * FROM applications WHERE id=#{idx}"
	list = database.execute(list_cmd)
	list.each do |job|
		puts "#{job['id']} | #{job['position']} at #{job['company']} | Contact: #{job['contact']}: #{job['email']} | #{job['application_date']} | Current Status: #{job['status']}"
	end
end

def remove_job(database)
	puts "What is the index of the application would you like to remove from your list?"
	idx = gets.chomp.to_i
	command = "DELETE from applications WHERE id=#{idx}"
	database.execute(command)
end

def find(database)
	puts "What is the position did you apply for?"
	position = gets.chomp
	puts "What is the company you applied for?"
	company = gets.chomp

	puts "Here are a list of applications that match your search:"
	find_cmd = "SELECT * FROM applications WHERE position='#{position}' or company='#{company}'"
	list = database.execute(find_cmd)
	list.each do |job|
		puts "#{job['id']} | #{job['position']} at #{job['company']} | Contact: #{job['contact']}: #{job['email']} | #{job['application_date']} | Current Status: #{job['status']}"
	end
end

def list(database)
	list = database.execute("SELECT * FROM applications")
	list.each do |job|
		puts "#{job['id']} | #{job['position']} at #{job['company']} | Contact: #{job['contact']}: #{job['email']} | #{job['application_date']} | Current Status: #{job['status']}"
	end
end

puts "Welcome to the Job Application Tracker."
display_commands
puts "What would you like to do?"

input = gets.chomp
until input == 'exit'

	if input == 'commands'
		display_commands
	elsif input == 'add'
		add_job(job_tracker)
	elsif input == 'update'
		update_job(job_tracker)
	elsif input == 'remove'
		remove_job(job_tracker)
	elsif input == 'list'
		list(job_tracker)
	elsif input == 'find'
		find(job_tracker)
	else
		puts "ERROR: The command you entered was not found. Please try again."
	end

	puts "What would you like to do? (Type 'commands' for a list of commands)"
	input = gets.chomp
end