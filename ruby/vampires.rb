puts "How many employees to be processed?"
employees =  gets.to_i

all_employees = 0
while all_employees < employees

nvampire = 'Probably not a vampire'
vampire = 'Probably a vampire.'
cvampire = 'Almost certainly a vampire.'
dvampire = 'Definitely a vampire.'

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
born = gets.chomp

age = Time.new.year.to_i - age.to_i

if age.to_i == born.to_i || age == born.to_i + 1.to_i
	age = true
else 
	age = false
end


puts "We have garlic bread for food.. should we order some for you? (yes or no)"
garlic = gets.chomp

until garlic == "yes" || garlic == "no"
	puts "I didn't understand you please answer yes or no"
	garlic = gets.chomp
end

if garlic == "yes"
	garlic = true
else
	garlic = false
end

puts "Would you like the company's health insurance? (yes or no)"
insurance = gets.chomp

until insurance == "yes" || insurance == "no"
	puts "I didn't understand you please answer yes or no"
	insurance = gets.chomp
end

if insurance == "yes"
	insurance = true
else
	insurance = false
end


allergies = ""
until allergies == "done" || allergies == "sunshine"
	puts "List any allergies ( one response at a time please) type done when finished"
	allergies = gets.chomp
		if allergies == "sunshine"
		p "Probaly a vampire!"
		break
	end
end

if age == true && (garlic == true || insurance == true) && allergies != "sunshine"
	p nvampire

elsif age == false && (garlic == false || insurance == false) && allergies != "sunshine"
	p vampire

elsif age == false && (garlic == false && insurance == false) && allergies != "sunshine"
	p cvampire

elsif name == "Drake Cula" || name == "Tu Fang" && allergies != "sunshine"
	p dvampire

elsif allergies != "sunshine"
	p "Results inconclusive"
end

all_employees +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."