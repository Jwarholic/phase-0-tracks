class Puppy

 def initialize
 	puts "Initializing new puppy instance ..."
 end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

 def speak(n)
 (0..n).each {puts "Woof!"}
 end

 def roll_over
	puts "roll over"
 end

 def dog_years(n)
	n = n * 10
	n
 end

 def jump(n)
	puts "The dog jumped #{n} times."
 end

end

class Car
	def initialize(color, year)
	@color = color
    @year = year
    end

def add_year
	@year += 1
    puts "The car is now #{@year} years old."
end

 def revengine
 puts "Vroom vroom"
 end

end
#puppy = Puppy.new
#puppy.fetch("squeeky")
#puppy.speak(3)
#puppy.roll_over
#puts puppy.dog_years(5)
#puppy.jump(5)

car = Car.new("blue", 3)
car.add_year
car.revengine

cars = Array.new

(0..50).each do 
car = Car.new("blue", 3)
cars << car
end

cars.each do |car|
car.add_year
car.revengine
end