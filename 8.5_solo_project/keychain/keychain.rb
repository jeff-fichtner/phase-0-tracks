# password generator and database


# verify user (password-protected access?)
# display all passwords
# generate password
# store password with username/other token
# prompt to change password every three months

# database

# require 'sqlite3'
# require 'date'

# table:
# 	int primary key
# 	website VARCHAR
# 	password VARCHAR
# 	date_init DATE



# class:
class Password

# password generator
	def generate length=14
		characters = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
		password = String.new
		length.times do
			password = password + characters.sample
		end
		number  = /[[:digit:]]/.match(password)
		uppercase = /[[:upper:]]/.match(password)
		lowercase = /[[:lower:]]/.match(password)
		# if nil, redo
	end


# create table

# view one entry

# view every entry

# verify date of passwords

# alert old passwords

end
# driver code

password = Password.new
password.generate 




# begin driver loop

# 1) new user
	# create new table
	# redo

# 2) select user
	# access pre-existing table
	# run 3-month check
		# if 'y', prompt new password
	
	# 1- view, 2- add, 3- quit
		
		# 1- view
			# display all websites/primary id's
			# input = id or 'all'
			# display

		# 2- add
			# prompt website
			# generate?
				# yes - generate password
				# no - prompt for password

			# store

		# 3- quit
			# break

# end