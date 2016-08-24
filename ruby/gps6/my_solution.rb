# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # takes 3 parameters and assigns instance attributes to them
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted_deaths and speed_of_spread instance methods with class instance arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # returns number of deaths based on population density and size
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 200..Float::INFINITY
      rate = 0.4
    when 150..199
      rate = 0.3
    when 100..149
      rate = 0.2
    when 50..99
      rate = 0.2
    else
      rate = 0.05
    end

    number_of_deaths = (@population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # returns calculated speed of virus spread (in months) based on pop density
  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
    when 200..Float::INFINITY
      speed = 0.5
    when 150..199
      speed = 1
    when 100..149
      speed = 1.5
    when 50..99
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

=begin
Pseudocode
iterate through the state data
  for each state
    create a new class instance
    calculate and print prediction values of instance
=end

# iterate through the state data
STATE_DATA.each do |state, data|
  # for each state create new class instance
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  # calculate and print prediction values of instance
  current_state.virus_effects
end



#=======================================================================
# Reflection Section

# require_relative: What does it do? How does it work? How does it differ from require?
# Links the named file to file in which it is called. 
# It works by searching the current directory for the file name.
# require is used for loading functionality whereas require_relative loads files.

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  Hashrocket assigns a value to the key of any dataype whereas the colon assigns a 
  value to the key and makes the key a symbol.

What does require_relative do? How is it different from require?
  require_relative loads a file in the project directory whereas require is 
  used to load functionality.

What are some ways to iterate through a hash?
  Two ways to iterate through a hash are to use Hash#each followed by a block statement 
  or by using Hash#map with a block statement.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  The variables existed as arguments in the private method calls within virus_effects,
  but they were not passed into the virus_effects method as arguments.

What concept did you most solidify in this challenge?
  I have a better understanding of instance variable scope and private methods.
=end