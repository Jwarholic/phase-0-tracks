#vampire program
puts "How many employees to be processed?"
employees =  gets.to_i

#adds loop to program to repeat until all employees finish
all_employees = 0
while all_employees < employees

#  sets variables to use for later
nvampire = 'Probably not a vampire'
vampire = 'Probably a vampire.'
cvampire = 'Almost certainly a vampire.'
dvampire = 'Definitely a vampire.'

# gets users name
puts "What is your name?"
name = gets.chomp

#gets users age
puts "How old are you?"
age = gets.chomp

#gets users birthdate
puts "What year were you born?"
born = gets.chomp

# takes current year and subtracts age to see if its a match. 
age = Time.new.year.to_i - age.to_i

#Adds 1 year incase employeee hasnt had birthday in current year
if age.to_i == born.to_i || age == born.to_i + 1.to_i
	age = true
else 
	age = false
end

#checks if employee likes garlic bread
puts "We have garlic bread for food.. should we order some for you? (yes or no)"
garlic = gets.chomp

#loops until yes or no declared
until garlic == "yes" || garlic == "no"
	puts "I didn't understand you please answer yes or no"
	garlic = gets.chomp
end

# converts garlic to true or false boolean 
if garlic == "yes"
	garlic = true
else
	garlic = false
end

#Ask for companies health insurance
puts "Would you like the company's health insurance? (yes or no)"
insurance = gets.chomp

#loops until yes or no declared
until insurance == "yes" || insurance == "no"
	puts "I didn't understand you please answer yes or no"
	insurance = gets.chomp
end

# converts to boolean true/false
if insurance == "yes"
	insurance = true
else
	insurance = false
end

#allergies loop will ask allergies until either done or sunshine is submitted
# if allergies is sunshine p probaly a vampire!
allergies = ""
until allergies == "done" || allergies == "sunshine"
	puts "List any allergies ( one response at a time please) type done when finished"
	allergies = gets.chomp
		if allergies == "sunshine"
		p "Probaly a vampire!"
		break
	end
end

# Checks our results and gives our results IF allergies was not declared as sunshine ( So that results wont overlap)

if name == "Drake Cula" || name == "Tu Fang" && allergies != "sunshine"
	p dvampire
	
elsif age == true && (garlic == true || insurance == true) && allergies != "sunshine"
	p nvampire

elsif age == false && (garlic == false || insurance == false) && allergies != "sunshine"
	p vampire

elsif age == false && (garlic == false && insurance == false) && allergies != "sunshine"
	p cvampire

elsif allergies != "sunshine"
	p "Results inconclusive"
end

# adds +1 to the loop for each time the program is ran
all_employees +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."