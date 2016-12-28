# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader" if development?

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  name = params[:name]
  if name
    "Hello, #{name}!"
  else
    "Hello!"
  end
  # "#{params[:name]} is #{params[:age]} years old."
end

get '/contact' do
  "123 Fake Street<br>
  New York, NY 11234"
end

get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/:num_1/plus/:num_2' do
  sum = params[:num_1].to_i + params[:num_2].to_i
  "#{params[:num_1]} + #{params[:num_2]} = #{sum}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  # student.to_s
  response = ""
  response << "ID: #{student['id']}<br>"
  response << "Name: #{student['name']}<br>"
  response << "Age: #{student['age']}<br>"
  response << "Campus: #{student['campus']}<br><br>"
  response
end

get '/campus' do
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  # students.to_s
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end