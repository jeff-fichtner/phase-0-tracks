# PUPPY SPECIES----------------------
# Caninus adorabilis

# CHARACTERISTICS--------------------
# Size: varies
# Paws: 4
# Cute: yes
# Nose: moist
# Tail: mostly
# Fur_color: varies
# Name: varies

# BEHAVIOR---------------------------
# Bark
# Run
# Fetch
# Dig 

class Puppy

  def initialize
    puts "Initializing puppy instance"
  end

  def fetch(toy)
  p "The puppy fetches the #{toy}"
  end
  
  def speak(int)
    int.times {puts "Woof!"}
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_years = human_years * 7
  end
  
  def begs(minutes,treat)
    minutes.times {puts "*begs for #{treat} for one minute*"}
  end
end


# Driver Code
ramen = Puppy.new
dubu = Puppy.new

p ramen.class
ramen.fetch("ball")
p ramen == dubu
dubu.instance_of?(Puppy)

ramen.speak(3)
ramen.roll_over
puts "Dubu is #{dubu.dog_years(4)} dog years old."

dubu.begs(2, "grapes")