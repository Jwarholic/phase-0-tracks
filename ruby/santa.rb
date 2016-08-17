class Santa
	attr_reader :age , :ethnicity
	attr_accessor :gender, :age

  def initialize(gender, ethnicity)
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
	puts "Initializing Santa instance ..."
  end

   def speak
   puts "Ho, ho, ho! Haaaappy holidays!"	
   end

  def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
  end


  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(reindeer_name)
  	@reindeer_ranking.delete(reindeer_name)
  	@reindeer_ranking << reindeer_name
  	p @reindeer_ranking
  end

end

santas = Array.new

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


#example_genders.length.times do |i|
#santas << Santa.new(example_genders[i], example_ethnicities[i])
 # puts "-------------------- New Santa --------------------"
 # puts "gender: #{example_genders[i]} , ethnicity:#{example_ethnicities[i]}"
#end


#new_santa = Santa.new("male", "white")
#puts "#{new_santa.gender}"
#new_santa.gender = "female"
#puts "#{new_santa.gender}"
#puts "#{new_santa.age} #{new_santa.ethnicity}"
#new_santa.celebrate_birthday
#puts "#{new_santa.age} #{new_santa.ethnicity}"

#Release 4 make a ton of santas


 

santa =  Santa.new(example_genders.sample, example_ethnicities.sample)
santa.age = rand(141)
puts "--------------------- Santa Details -------------"
puts " age:#{santa.age}
 gender:#{santa.gender}
 ethnicity:#{santa.ethnicity}"

	
	
	
	
	
	
	
	
	
	
	
	
	
	