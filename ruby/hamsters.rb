puts "What is the hamster's name?"
name = gets.chomp

puts "What is the volume of your hamster (1-10)?"
volume = gets.chomp

volume = volume.to_i

puts "What is the color of fur?"
fur = gets.chomp

puts "Is the hamster a good canidate for adoption? (yes or no)"
adoption = gets.chomp

until adoption == "yes" || adoption == "no"
	puts "I didn't understand you yes or no only."
	adoption = gets.chomp
end

if adoption == "yes"
	adoption = true
	else
	adoption = false
end 

puts "what is the estimated age of hamster?"
age = gets.chomp

if age == ' '
	age = nil
else
	age = age.to_i
end

puts "name = #{name},age = #{age}, volume = #{volume}, fur = #{fur}, canidate for adoption = #{adoption}"

