# Assignment 8-5 Create something using Ruby and SQlite3


# Input
# Create a random workout generator that lets user pick from a database of workouts
#Require our gems

require 'sqlite3'

#Create our database file
db = SQLite3::Database.new("workouts.db")



# Create tables into our database....
#       - Arms
#       - Legs
#       - Chest
#       -back
#       - Shoulders
#       - Abs
#       - Full_body

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


#Execute our tables

db.execute(table_creator("arms"))
db.execute(table_creator("legs"))
db.execute(table_creator("chest"))
db.execute(table_creator("back"))
db.execute(table_creator("shoulders"))

# For each table populate three default workouts.

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

# Create a method that will allow user to add workouts to each group
def add_arms(db, name, description)
	db.execute("INSERT OR IGNORE INTO arms (name, description) VALUES (?, ?)", [name, description])
end

# add_arms(db, "Arm Blaster", "5 sets arm curls, 3 sets trciep extenson") 

# USER INTERFACE

# User chooses to add or delete workouts from the tables OR chooses to generate a workout
# User  chooses a category to receive a workout
# User receives a random workout printed to them
# User chooses if they want a new workout generated or quit the program