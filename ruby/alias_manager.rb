=begin  Release 0
 - Create a method that 
 	- swaps the order of the name "J W to W J"
 	- converts string to array and swaps
 	- converts back to a string
 	- converts the string to all downcase
 - Checks to see if the index of current letter is a consonant or a vowel
 - if the current index is a vowel change it to the next vowel
 - elsif the index is a consonant change it to the next consonant
 - elseif index is a space add a space
 - end the method
 - call the method
=end

# Release 1 Provide a user interface 
# -Ask the user to enter a name
#   -run that name into the method of swap
#   -create a loop until user input = 'quit'


# Release 2 Store the Aliases
 #  - When user inputs name
 #    - Take name and store it into a new hash
 #    - Make the output of translated name the value
 #    - Make the input the key of the hash
 # - Iterate through the hash for each name
 # - Make the iteration print the key and value of each item until ended
 #  - Print out every entered name

 #release 0 make the method
def swap(string)
	swapper = string.split
	string = swapper.join(" ")
	string.reverse!
	string.downcase!
	vowels = "aeioua"
	con = "bcdfghjklmnpqrstvwxyzb"
	index = 0
	final_string = ""
	string.length.times do |index|
		if !con.include?(string[index]) && !vowels.include?(string[index])
			final_string.concat(" ")
			elsif vowels.include?(string[index])
			next_vowel = vowels[vowels.index(string[index]) +1]
			final_string << next_vowel
			elsif con.include?(string[index])
			next_con = con[con.index(string[index]) +1]
			final_string << next_con
		end
		index += 1
	end
	final_string = final_string.split.map! { |x| x.capitalize }.join(' ')
	final_string
end

#Release 1 adding a user interface
#Release 2 ( Created new_array )
# - Stored the name and the swapped name into the array
# - capitalized first and last name with split and map
# - converted to a hash to print out each key and value of name and swapped name alternated

new_array = []
puts "Please enter a name to translate."
name = gets.chomp
name = name.split.map! { |x| x.capitalize }.join(' ')
p swap(name)
new_array << name
new_array << swap(name)
until name == 'quit'
puts "Enter a new name to translate or type quit to exit."
name = gets.chomp
if name == 'quit'
	puts "Thanks for using the translator! See ya next time."
else
	p swap(name)
	name = name.split.map! { |x| x.capitalize }.join(' ')
	new_array << name
	new_array << swap(name)
end
end

final_hash = Hash[*new_array]
final_hash.each { |key, value| puts "#{value} is actually #{key}" }