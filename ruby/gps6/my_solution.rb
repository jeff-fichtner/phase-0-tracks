# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows a program to retrieve data from another relevant program
# require_relative looks in its current directory, and loads it once
# require loads any data file, but 'relative' looks locally

# links constant 'STATE_DATA'
require_relative 'state_data'

class VirusPredictor
# sets up our instance with its initial state
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# analyzing data of class object, performing a calculation based on that data
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
# prints the result
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# analyzing data of class object, performing a calculation based on that data
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end
# prints the results
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_hash|
  VirusPredictor.new(state, population_hash[:population_density], population_hash[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# - They both represent the 'key' in a 'key'-'value' pair, but the hash rocket works when the key has spaces.

# What does require_relative do? How is it different from require?
# - Require loads files in the load path, require_relative looks in the current directory and loads a corresponding document.

# What are some ways to iterate through a hash?
# - Loops with incremental indexes, methods like .each

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - I noticed they were instance variables, and therefore had scope throughout all of the class methods.

# What concept did you most solidify in this challenge?
# - I think I understand refactoring a bit better. I knew that is an area I've lacked good feedback and experience in.