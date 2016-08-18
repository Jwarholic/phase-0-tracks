#Release 0: Design a Class

# -Create a class that creates a gym
#   -Create a initialize method with gym_name , gym_location as parameters
#   	-State our attributes
#   	-give our class these atrributes
#       -@gym_name
#       -@gym_location
#       -@gym_type
#       -@gym_ranks as an array with the top gyms
#       -puts "Initializing new gym."
#   -Create a method that gives a high-five with n as a parameter
#		-DEFINE high_five 
#		- n.times puts High-Five!
#   -Create a method that allows user to get protein with n as a parameter
#		-DEFINE get_protein
#		-puts out "Here is your #{n} grams of protein.
#	-Create a method that deletes a gym from @gym_ranks
#     -DEFINE bad_gym with gym as a parameter
#     - @gym_type.delete(gym)
#	-Create a method that adds a gym to @gym_ranks
#     -DEFINE good_gym(gym)
#     -@gym_type.add(gym)


#Release 1: Write your class
# Use attr_Reader :gym_location, :gym_ranks, :gym_type
# Use attr_accessor :gym_location, :gym_ranks, :gym_type
# Use an initialize method that sets at least one attribute

class Gym

attr_reader :gym_location, :gym_ranks, :gym_type , :gym_name
attr_accessor :gym_location, :gym_ranks, :gym_type, :gym_name

	def initialize(name, location)
    @gym_name = name
    @gym_location = location
    @gym_type = nil
    @gym_ranks = ["World's Finest Gym", "Awesome Gym", "Gym in the sea" , "Jungle Gym", "Pokemon Gym"]
    puts "Initializing new gyms"
	end

	def high_five(n)
		n.times {puts "High-Five keep getting stronger!"}
	end

	def get_protein(amount)
		puts "Here is your #{amount} grams of protein"
	end

	def bad_gym(gym)
		if @gym_ranks.include?(gym)
			@gym_ranks.delete(gym)
		else
			puts "Gym is not currently a good gym"
		end
	end

	def good_gym(gym)
		if @gym_ranks.include?(gym) == false
			@gym_ranks << gym
		else
			puts "Gym is already in the list"
		end
	end
	
end

#Driver code to verify all methods working in the class
#space = Gym.new("somewhere land", "idaho")
#space.high_five(4)
#space.get_protein(500)
#space.bad_gym("Pokemon Gym")
#puts "#{space.gym_ranks}"
#space.good_gym("Gym of the west")
#puts "#{space.gym_ranks}"

#    Release 2
#    -Ask user for input
#    	-How many gyms to create?
#       -Create a loop until all gyms created
#       -Create an empty array to store information
#       -Save the data and push it into the Array
#       -Print the final results in a nice fashion

gym_storage = Array.new
gyms = 0 

puts "How many gyms are we creating today?"
amount = gets.chomp
amount = amount.to_i

#Create until loop until all gyms created according to user
until gyms == amount
	puts "Alright lets create a new gym!"
	puts "What would you like your gym name to be?"
	name = gets.chomp
	puts "Where is your gym going to be located?"
	location = gets.chomp
	puts "What is your type of gym for? (yoga, fitness, weights, pokemon?)"
	type = gets.chomp
	gyms += 1 
#  creates our new gym with the inputs of the user 
	gym = Gym.new(name, location)
	gym.gym_type = type
# Stores our gym into gym_storage array	
	gym_storage << gym 
end

#Print out our array data in an orderly fashion
#Iterates through the gym_storage array and prints out the gyms name/location/type to the user
puts "-------------Here are the created gyms----------------:"
gym_storage.each do |gym|
	puts "Gym name: #{gym.gym_name}"
	puts "Gym location: #{gym.gym_location}"
	puts "Gym type: #{gym.gym_type}"
	puts "------------------------------------------------------------"
end