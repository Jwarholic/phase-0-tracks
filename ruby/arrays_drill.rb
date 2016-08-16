# paired with katherine guenther

def adds_to_array(para, item)
	para << item
end

def array(item1, item2, item3)
method_array = [item1, item2, item3]
end

my_array = [1,2,3,4,5]
p my_array

my_array.slice!(0)
p my_array

my_array.insert(2, 6)
p my_array

my_array.shift
p my_array

my_array.include?(6)
puts "checking to see if my_array has 6 in it. this is #{my_array.include?(6)}"

second_array = [7,"8", nil, true]
new_array = my_array + second_array
p new_array

p array("house", "shampoo" , "olympics")
p adds_to_array([1,2,3,4,5], 6)
p adds_to_array([], "a")
p adds_to_array(["a", "b", "c", 1, 2], 3)