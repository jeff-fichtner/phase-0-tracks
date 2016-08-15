# password generator and database


# verify user
# display all passwords
# generate password
# store password with username/other token
# prompt to change password every three months

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
		  	)
		SQL
		$PASSWORDS.execute(create_table_cmd)
	end


	# create key
	def create_key website, password, init_date
	  $PASSWORDS.execute("INSERT INTO passwords (website, password, init_date) VALUES (?, ?, ?)", [website, password, init_date])
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


	# view one entry
	def view_one_entry id
		hash = $PASSWORDS.execute("SELECT * FROM passwords WHERE id=?", [id])
		# display hash better
	end


	# view every entry
	def view_all
		hash = $PASSWORDS.execute("SELECT * FROM passwords")
		# display hash better
	end


	# verify date of passwords
	def verify_date
		id_array = Array.new
		# iterate through each row
			# gather the date, add 90 days

				# if on or before today's date
					# add id to array
				# end if
		# end iteration

		# return array of id's
	end

end



# driver code

puts
puts "Welcome to the keychain."
puts

keychain = Keychain.new
keychain.new_table

# if keychain.verify_date != nil
	# for each id:
			# prompt a new password
			# overwrite old password

answer_to_life = 42
while answer_to_life == 42

	puts
	puts "To add an entry, type (1).\n" +
			 "To update an entry, type (2).\n" +
			 "To view all entries, type (3).\n" +
			 "To quit, type (q)."
	puts

	input = gets.chomp
	break if input == 'q'

	if input.to_i == 1
		# add entry
		p 'option 1'

	elsif input.to_i == 2
		# update entry
		p 'option 2'

	elsif input.to_i == 3
		# view all entries
		p 'option 3'

	end


end # while
p 'end of program message'



# pseudocode

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

# end