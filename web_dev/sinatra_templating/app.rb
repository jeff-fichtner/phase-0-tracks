# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db.execute("CREATE TABLE IF NOT EXISTS campuses ('id' integer primary key, 'campus_name' varchar(255), 'number_of_students' int)")

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


# 9.5

# add a route to search.erb
get '/search/new' do
	erb :new_search
end

# return students who match the search
post '/search' do
	@students = db.execute("SELECT * FROM students")
	@letter = params['first_letter']
	erb :search_results
end


# add campus form
get '/campuses' do
	@campuses = db.execute("SELECT * FROM campuses")
	erb :campuses
end

post '/campus' do
	db.execute("INSERT INTO campuses (campus_name, number_of_students) VALUES (?,?)", [params['campus_name'], params['number_of_students'].to_i])
	redirect '/campuses'
end