class Santa
	def initialize gender, ethnicity
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		p "Initializing Santa instance ..."
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies cookie_type
		p "That was a good #{cookie_type} cookie!"
	end
end

=begin driver code
st_nick = Santa.new
st_nick.speak
st_nick.eat_milk_and_cookies('chocolate chip')
=end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas << Santa.new("male", "Colombian")
santas << Santa.new("female", "alien")

p santas