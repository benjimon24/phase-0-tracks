require 'sqlite3'
require 'faker'
require 'date'

job_tracker = SQLite3::Database.new("job_tracker.db")
job_tracker.results_as_hash = true

test = <<-SQL
  CREATE TABLE IF NOT EXISTS applications(
	  id INTEGER PRIMARY KEY,
	  company_name VARCHAR(255),
	  position VARCHAR(255),
	  contact VARCHAR(255),
	  email VARCHAR(255),
	  application_date VARCHAR(255),
	  status VARCHAR(255)
	)
	SQL

job_tracker.execute(test)

CURRENT_DATE = DateTime.now.strftime('%B %d, %Y')

def add_job(database, company_name, position, contact, email)
	database.execute("INSERT INTO applications (company_name, position, contact, email, application_date, status) VALUES (?, ?, ?, ?, ?, 'Awaiting')", [company_name, position, contact, email, CURRENT_DATE])
	puts "You have added the #{position} position at #{company_name} to the tracker on #{CURRENT_DATE}."
end

add_job(job_tracker, "Google", "CEO", Faker::Name.name, Faker::Internet.email)

def display_commands
	puts "Here are a list of commands:"
	puts "  commands - display a list of your commands"
	puts "  add - add a new application"
	puts "  update - update the status of a current application"
	puts "  remove - remove an application"
	puts "  list - lists all positions"
end

def list
end

puts "Welcome to the Job Application Tracker. What would you like to do?"
display_commands