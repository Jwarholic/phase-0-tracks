# Assignment 8-5 Create something using Ruby and SQlite3


# Input
# Create a random workout generator that lets user pick from a database of workouts
#Require gems
#Output
# random workout

require 'sqlite3'

#Create our database file
db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

# Create a method to create our tables
# Use a unique constraint to prevent duplicate workout names
def table_creator(name)
 <<-SQL
  CREATE TABLE IF NOT EXISTS #{name} (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    CONSTRAINT name_unique UNIQUE (name)
  )
  SQL
end

# Create tables into database....
#  - Arms / legs/ chest / back / shoulders

db.execute(table_creator("arms"))
db.execute(table_creator("legs"))
db.execute(table_creator("chest"))
db.execute(table_creator("back"))
db.execute(table_creator("shoulders"))

# For each table populate three default workouts.
# Will not ADD if name exist becuase unique constraint

#Arms
db.execute("INSERT OR IGNORE INTO arms (name, description) VALUES 
	('Arm Blaster' , 'five sets arm curls, three sets trciep extenson')")
db.execute("INSERT OR IGNORE INTO arms (name, description) VALUES 
	('Pyramid Curls' , '10 sets arm curls, Increase weight each set until 5 sets completed. Drop a little weight each set until all 10 sets complete')")
db.execute("INSERT OR IGNORE INTO arms (name, description) VALUES 
	('Triceps Gone Wild' , 'five sets arm curls, three sets trciep extenson')")

#Legs
db.execute("INSERT OR IGNORE INTO legs (name, description) VALUES 
	('Leg Blaster' , 'five sets squats, three sets leg press')")
db.execute("INSERT OR IGNORE INTO legs (name, description) VALUES 
	('Leg Pyramid' , '10 sets squats, Increase weight each set until 5 sets completed. Drop a little weight each set until all 10 sets complete')")
db.execute("INSERT OR IGNORE INTO legs (name, description) VALUES 
	('Legs Gone Wild' , 'five sets lunges, three sets box jumps')")

#chest
db.execute("INSERT OR IGNORE INTO chest (name, description) VALUES 
	('Chest Blaster' , 'five sets bench, three sets chest flys')")
db.execute("INSERT OR IGNORE INTO chest (name, description) VALUES 
	('Pyramid Chest' , '10 sets bench, Increase weight each set until 5 sets completed. Drop a little weight each set until all 10 sets complete')")
db.execute("INSERT OR IGNORE INTO chest (name, description) VALUES 
	('Chest Gone Wild' , 'five sets incline chest, three sets incline flys')")

#back
db.execute("INSERT OR IGNORE INTO back (name, description) VALUES 
	('Back Blaster' , 'five sets pullups, three sets deadlifts')")
db.execute("INSERT OR IGNORE INTO back (name, description) VALUES 
	('Pyramid Pullups' , '10 sets Pullups, Increase weight each set until 5 sets completed. Drop a little weight each set until all 10 sets complete')")
db.execute("INSERT OR IGNORE INTO back (name, description) VALUES 
	('Back Gone Wild' , 'five sets deadlifts, three sets pullups')")

#shoulders
db.execute("INSERT OR IGNORE INTO shoulders (name, description) VALUES 
	('Shoulder Blaster' , 'five sets shoulder press, three sets rear delts')")
db.execute("INSERT OR IGNORE INTO shoulders (name, description) VALUES 
	('Pyramid Delts' , '10 sets rear delts, Increase weight each set until 5 sets completed. Drop a little weight each set until all 10 sets complete')")
db.execute("INSERT OR IGNORE INTO shoulders (name, description) VALUES 
	('Shoulders Gone Wild' , 'five sets shoulder press, three sets fronts and sides')")

# Create a method that will allow user to add workouts to each group if that name does not exist
def add(db, name, description, group)
	db.execute("INSERT OR IGNORE INTO #{group} (name, description) VALUES (?, ?)", [name, description])
end

# USER INTERFACE

# User chooses to add or delete workouts from the tables OR chooses to generate a workout
# User  chooses a category to receive a workout
# User receives a random workout printed to them
# User chooses if they want a new workout generated or quit the program

 puts "What would you like to do?"
 puts "-- Type 'add' to add a workout."
 puts "-- Type 'delete' to delete a workout"
 puts "-- Type 'update' to update a workout."
 puts "-- Type 'workout' to generate a random workout."
 first_response = gets.chomp.downcase 

 #Set up a case statement for each response from the user
 case first_response
 	when 'add'
	puts "choose a database to add to (arms, legs, chest, shoulders, back)"
	add = gets.chomp.downcase
	if add == 'arms' || workout == 'legs' || workout == 'chest' || workout == 'back' || workout == 'shoulders'
	puts "Type a name for the workout"
	name = gets.chomp
	puts "Type the description for the workout"
	description = gets.chomp 
	add(db, name, description, add)
	end
end
	
#Ask user what workout to fetch from and converts it to an array
puts "What muscle group are you working out today? (arms, legs, chest, back, shoulders)?"
workout = gets.chomp.downcase

#Iterate through the array and generate a random workout based on the input
if workout == 'arms' || workout == 'legs' || workout == 'chest' || workout == 'back' || workout == 'shoulders'
	workout = workout.split(' ')

workout.each do |index|
	index = db.execute("SELECT #{index}.name, #{index}.description FROM #{index}")
	randnum = rand(0..index.length - 1)
	randompick = index[randnum]
    puts "Here is your random workout"
	puts "----------------------"
	puts "Workout Name: #{randompick['name']}"
	puts "Workout Description: #{randompick['description']}"
	end	
else
	puts "I didn't understand you"
end