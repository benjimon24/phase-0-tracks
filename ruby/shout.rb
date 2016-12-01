# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end

# end

# puts Shout.yell_angrily("hey")
# puts Shout.yelling_happily("yay")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + " :D"
  end

end

class Dad
	include Shout
end

class Teacher
	include Shout
end

dad = Dad.new
puts dad.yell_angrily("I can drink as much as I want")

teacher = Teacher.new
puts teacher.yelling_happily("The sky is the limit")