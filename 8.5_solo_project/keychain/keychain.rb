# password generator and database

# database

require 'sqlite3'
require 'date'

class Keychain


	# create database
	def initialize
		$PASSWORDS = SQLite3::Database.new("passwords.db")
		$PASSWORDS.results_as_hash = true
		$PASSWORDS
	end


	# create table
	def new_table
		create_table_cmd = <<-SQL
		  CREATE TABLE IF NOT EXISTS passwords (
		    id INTEGER PRIMARY KEY,
		    website VARCHAR(255),
		    password VARCHAR(255),
		    init_date DATE
		  	);
		SQL
		$PASSWORDS.execute(create_table_cmd)
	end


	# create key
	def create_key website, password, init_date
	  $PASSWORDS.execute("INSERT INTO passwords (website, password, init_date) VALUES (?, ?, ?);", [website, password, init_date])
	end


	# ask to generate password
	def prompt_password
		puts "Would you like to generate a password? (yes/no)"
		response = gets.chomp
		
			if response == 'yes'
				generate
			elsif response == 'no'
				puts "Please enter a password."
				gets.chomp
			end
	end


	# password generator
	def generate length=14
		characters = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
		password = String.new
		length.times do
			password = password + characters.sample
		end
		# remake password if it doesn't contain all three types of characters
		if (/[[:digit:]]/.match(password) == nil || /[[:upper:]]/.match(password) == nil || /[[:lower:]]/.match(password) == nil)
			password = generate
		end
		password
	end


	# view one entry (with id)
	def view_entry_id id
		hash = $PASSWORDS.execute("SELECT * FROM passwords WHERE id=?;", [id])
		display(hash[0])
	end


	# view one entry (with website name)
	def view_entry_website website
		hash = $PASSWORDS.execute("SELECT * FROM passwords WHERE website=?;", [website])
		display(hash[0])
	end


	# view every entry
	def view_all
		array_of_hashes = $PASSWORDS.execute("SELECT * FROM passwords;")
			
			i = 0
			until i == (array_of_hashes.length)
				puts display(array_of_hashes[i])
				i += 1
			end

	end


	# verify date of passwords - id's in array need updating
	def verify_date
		id_array = Array.new
		array_of_hashes = $PASSWORDS.execute("SELECT * FROM passwords;")
			i = 0
			until i == (array_of_hashes.length)
				date_in_3_months = Date.parse(array_of_hashes[i]['init_date']) + 90
				today = Time.new.to_date
				diff = date_in_3_months - today
					
					if diff <= 0
						id_array << array_of_hashes[i]['id']
					end

				i += 1
			end
		id_array
	end


	# update entry
	def update_entry id, new_password
		date = Time.new.strftime("%Y-%m-%d")
		$PASSWORDS.execute("UPDATE passwords SET password=?, init_date=? WHERE id=?;", [new_password, date, id])
	end


	private


	# display hash
	def display hash
		"website: #{hash['website']} | password: #{hash['password']}"
	end


end



# driver code

puts
puts "Welcome to the keychain."
puts

keychain = Keychain.new
keychain.new_table

if keychain.verify_date.empty? == false
	id_array = keychain.verify_date
	id_array.each do |id|
		puts "The following password is out of date:"
		puts
		puts keychain.view_entry_id(id)
		puts
		password = keychain.prompt_password
		keychain.update_entry(id, password)
		puts
		puts keychain.view_entry_id(id)
		puts
	end
end

# begin loop
answer_to_life = 42
while answer_to_life == 42

	puts "------------------------------"
	puts "To add an entry, type (1).\n" +
			 "To update an entry, type (2).\n" +
			 "To view all entries, type (3).\n" +
			 "To quit, type (q)."
	puts "------------------------------"

	input = gets.chomp
	answer_to_life += 1 if input == 'q'

	if input.to_i == 1
		puts "What is the name of the website?"
		website = gets.chomp
		puts "Would you like to generate a password? (yes/no)"
		password = keychain.prompt_password
		date = Time.new.strftime("%Y-%m-%d")
		keychain.create_key(website, password, date)
		puts
		puts keychain.view_entry_website(website)
		puts


	elsif input.to_i == 2
		p keychain.view_all
		puts "Which id would you like to update?"
		id = gets.chomp.to_i
		password = keychain.prompt_password
		keychain.update_entry(id, password)
		puts
		puts keychain.view_entry_id(id)
		puts


	elsif input.to_i == 3
		puts "------------------------------"
		puts
		keychain.view_all
		puts

	end


end

puts
puts "See you later!"
puts





# pseudocode


# verify user
# display all passwords
# generate password
# store password with username/other token
# prompt to change password every three months

# pseudo driver:

# create database
# create table
# run 3-month check
		# if 'y', prompt new password
		# if 'n', stay silent

# begin driver loop
	# 1- add, 2- update, 3- view, 4- quit

		# 1- add
			# prompt website
			# generate?
				# yes - generate password
				# no - prompt for password
				# store with date
				# display individual entry

		# 2- update
		
		# 3- view
			# display all id's/websites/passwords
			
		# 4- quit
			# break

# end loop