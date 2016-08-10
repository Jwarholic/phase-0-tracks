# release 0 to write a method as a block
def hello
	puts "hello world"
	yield("sunnie", "velvet")
end

hello { |dog, cat| puts "I am so happy to see you #{dog} and #{cat}" }



#release 1
# using each, map and map!

dogs = ["sunnie" , "barney" , "coco"]
puts "dogs before iteration:"
p dogs

electronics = { "tvshows" => "tv", "music" => "radio", "coding" => "computer"}
puts "electronics before iteration:"
p electronics


dogs.each {|x| puts "I miss #{x}"}
#adds BOO to the end of each index
dogs.map! {|x| x + "BOO" }
puts "array after iteration"
p dogs

electronics.each {|key, value| puts "#{key} is for the #{value}" }

#release 2 use the documentation

# 1 A method that iterates through the items, deleting any that meet a 
#certain condition (for example, deleting any numbers that are less than 5).

#array
array = [1,2,3,4,5,6,7,8,9,10]
array.delete_if {|number| number < 5}

p array

#hash
hash = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
hash.delete_if  { |key, value| key == "sad"}

p hash

# 2 A method that filters a data structure for only items that do
# satisfy a certain condition (for example, keeping any numbers
#  that are less than 5).

#array
array2 = [1,2,3,4,5,6,7,8,9,10]
array2.select! {|number| number < 5}

p array2

#hash
hash2 = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
hash2.select! {|key, value| key == "tv_show" }

p hash2

#3 A different method that filters a data structure
# for only items satisfying a certain condition -- Ruby offers several options!

#array
array3 = [1,2,3,4,5,6,7,8,9,10]
array3.keep_if { |number| number.odd?}

p array3

#hash
hash3 = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
hash3.keep_if { |key, value| value == true}

p hash3

#4 A method that will remove items from a data structure 
# until the condition in the block evaluates to false, 
#then stops (you may not find a perfectly working option for the hash, and that's okay).

#array
array4 = [1,2,3,4,5,6,7,8,9,10]
new_array = array4.drop_while {|number| number < 5}

p new_array

#hash
hash4 = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5 }
new_hash = hash4.length
hash4.delete_if { |key, value| value < new_hash - 2}
p hash4
