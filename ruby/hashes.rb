#    -Create a hash
#    -Ask user for details of a given client: the client's name, age,
# number of children, and decor theme
#      - convert user input to appropriate data type
#      - print the results and ask user if they would like to update the key
#         - If user input is = to the key, let user replace string
#         - Else if user input = "none" skip it
#       - Put information into existing hash
#      - Print all of the user data in a form of a hash / exit program

interior_designer_job = {}

puts "What is the client's name?"
interior_designer_job[:name] = gets.chomp


puts "What is the client's age?"
interior_designer_job[:age] = gets.chomp.to_i

puts "How many children does the client have?"
interior_designer_job[:children] = gets.chomp.to_i

puts "What is clients favorite decor theme?"
interior_designer_job[:theme] = gets.chomp

puts interior_designer_job

puts "Would you like to update a key?(type none to continue or type which key to change)"
change = gets.chomp

if change == "name"
	puts "enter name"
	interior_designer_job[:name] = gets.chomp
elsif
	change == "age"
	puts "enter age"
	interior_designer_job[:age] = gets.chomp.to_i
elsif
	change == "children"
	puts "enter amount of children"
	interior_designer_job[:children] = gets.chomp.to_i
elsif 
	change == "theme"
	puts "enter theme"
	interior_designer_job[:theme] = gets.chomp
else
	puts "no changes made"
end

puts "Here is the updated results:" 
puts interior_designer_job


