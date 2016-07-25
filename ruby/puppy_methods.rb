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
    puts "Initializing new puppy instance ..."
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

class Kitty
  attr_reader :name
  
  def initialize(name)
    puts "Initializing new kitty instance..."
    @name = name
  end
  
  def speak(reason)
    if reason == "intruder"
      p "*Hisses*"
    elsif reason == "mom"
      p "*Purrs*"
    else
      p "*Cries*"
    end
  end

  def hide(spot)
    p "#{@name} hides in the #{spot}."
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

marcello = Kitty.new("Marcello")
mimi = Kitty.new("Mimi")

mimi.hide("closet")
marcello.speak("mom")
mimi.speak("mailman")
marcello.speak("intruder")

kitty_array = []
i = 0
until i == 50
  kitty_array << Kitty.new("kitty")
  i += 1
end

kitty_array.each {|x| puts x.name}