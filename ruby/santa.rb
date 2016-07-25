class Santa

def initialize
	p "Initializing Santa instance ..."
end

def speak
	p "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies cookie_type
	p "That was a good #{cookie_type} cookie!"
end

end

st_nick = Santa.new
st_nick.speak
st_nick.eat_milk_and_cookies('chocolate chip')