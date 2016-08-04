

#An encrypt method that advances every letter of a string one letter forward. 
#So "abc" would become "bcd". For now, you can assume lowercase input and output.
# Any space character should remain a space character -- no change made.

# - define a method that puts letter of every string one letter forward.
# - If character is a space
# 	- No change is made



def encrypt(string)
	string[0..-1].next
end

p encrypt("test")

# until every letter of string is nexted, from 1st letter to last letter go to next letter