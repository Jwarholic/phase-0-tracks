#An encrypt method that advances every letter of a string one letter forward.
# So "abc" would become "bcd". For now, you can assume lowercase input and output. 
#Any space character should remain a space character -- no change made.


 # - Define a method
 #   - set a counter for the current index
 #   - until each index in string is checked
 #     - Check to see if index is space and if true no change
 #     - Otherwise advance character one letter
 #     - Increment one index

 def encrypt(string)
 	index = 0
 	while index < string.length
 		if string[index] == "z"
 			string[index] = "a"
 		elsif string[index] != " "
 			string[index] = string[index].next
 		end
 		index += 1
 	end
 	return string
 end

 #A decrypt method that reverses the process above. 
 #Note that Ruby doesn't have a built-in method for going backward one letter. 
 #How can you find out where a letter is in the alphabet, 
 #then access the letter right before it? Hint: In the IRB session above, 
 #you learned how to ask a string for the index of a letter. 
 #{}"abcdefghijklmnopqrstuvwxyz" counts as a string.

 # - Define a decrypt method
 #    - set a counter for the current index
 #    - until each character in string is checked
 #       - Check to see if index is space , do nothing if true
 #       - find out what character index is in the alphabet string
 #       - subtract 1 from the index and return that as the new character from the alphabet string
 #       - increment one index

def decrypt(string)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < string.length
		if string[index] != " "
		newstring = alphabet.index(string[index])
		newstring -= 1
		string[index] = alphabet[newstring]
	end
	index += 1
end
return string
end

puts "Would you like to encrypt or decrypt your secret password?"
input = gets.chomp

puts "What is your password?"
password = gets.chomp

if input == "encrypt"
	password = encrypt(password)
	p password
elsif input == "decrypt"
	password = decrypt(password)
	p password
else
	p "please try again"
end

# Decrypting swordfish all 1 character backwards
# encrypt brings it all 1 character forward , canceling each other out



#      - Ask user to encrypt or decrypt
#         - gets password ( string )
#         - Based on user input encrypt or decrypt
#         - Prints results to screen



