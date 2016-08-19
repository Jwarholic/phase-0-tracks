#module Shout
# def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(words)
#  	words + "  :) I am happy  "
#  end
#end

#Release 1 driver code
#puts Shout.yell_angrily("I AM MAD!")
#puts Shout.yelling_happily("I AM HAPPY")

#Release 3
module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yelling_happily(words)
 	 	puts words + "  :) I am happy  "
 	end
end


class Angryman
	include Shout
end

class Happyman
	include Shout
end

madman = Angryman.new
madman.yell_angrily("GRRRRR")
happyman = Happyman.new
happyman.yelling_happily("WOOOOHOO!!!")