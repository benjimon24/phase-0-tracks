require_relative 'state_data'

class VirusPredictor
# when initialized, turns "on" the initiated variables - declares what kind of variables, and parameters they receive
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# virus_effects - calls two other methods, sending data down to daughter methods. -NOT PRIVATE METHOD
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread  #(@population_density, @state)
  end

  private

# predicted_deaths - PRIVATE - this method calculates death based on pop density and pop

  def predicted_deaths  #(population_density, population, state)
    # predicted deaths is solely based on population density
    # case @population_density
    # 	when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    # 	when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    # end
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # speed_of_spread - calculates speed, based on pop density
  def speed_of_spread   #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end



end

#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, hash_info|
  info_state = VirusPredictor.new(state, hash_info[:population_density], hash_info[:population])
  info_state.virus_effects
end
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses strings as a key. The other uses symbols, which has their own functionality. 

# What does require_relative do? How is it different from require?
# require_relative allows you to find the file in the directory relative to the file you are calling it from, instead of from Ruby's libraries. 

# What are some ways to iterate through a hash?
# You can use .each which uses both the key and value, each_key to iterate through just the keys, or each_value to iterate through just the values.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# All the variables were instance variables. The two methods in virus_effects didn't need to accept them as parameters because they are instance methods.

# What concept did you most solidify in this challenge?
# I now have a bunch better understanding of the relationship between instance variables and instance methods.
# Specifically, I now have a better understanding of whether or not to accept them as parameters.
# I also learned about using 'private' to make instance methods inaccessible from outside the method.