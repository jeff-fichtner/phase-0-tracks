class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize
		p "Initializing Santa instance ..."
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@gender = example_genders.sample
		@ethnicity = example_ethnicities.sample
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(141)
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies cookie_type
		p "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at reindeer
		i = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(i)
		@reindeer_ranking << reindeer
	end
end

100.times do
	rand_santa = Santa.new
	p rand_santa.gender
	p rand_santa.ethnicity
	p rand_santa.age
end

# st_nick = Santa.new("intersex", "mixed")
# st_nick.speak
# st_nick.eat_milk_and_cookies('chocolate chip')


# santas = []
# 100.times do |i|
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	p santas
# end


# santas << Santa.new("male", "Colombian")
# santas << Santa.new("female", "alien")


# p santas[1].class

# p santas[2].ethnicity

# p santas[5].age
# santas[5].celebrate_birthday
# p santas[5].age

# p santas[3].reindeer_ranking
# santas[3].get_mad_at "Vixen"
# p santas[3].reindeer_ranking

# p santas[1].gender
# santas[1].gender = "not sure"
# p santas[1].gender
