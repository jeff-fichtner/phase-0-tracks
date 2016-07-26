module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!" + " :D"
  end
end

class Mom
	include Shout
end

class Dad
	include Shout
end

mom = Mom.new
puts mom.yell_angrily("Clean up your room")

dad = Dad.new
puts dad.yelling_happily("It's dinner time")

# puts Shout.yell_angrily("Go to hell")
# puts Shout.yelling_happily("My food is here")