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

	def initialize(name, location)
    @gym_name = name
    @gym_location = location
    @gym_type = nil
    @gym_ranks = ["World's Finest Gym", "Awesome Gym", "Gym in the sea" , "Jungle Gym", "Pokemon Gym"]
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