require 'pry'
class Lexiconomitron
  def eat_t(input_string)
    input_string.downcase.delete 't'
  end

  #
  def shazam(input_string)
binding.pry
input_string = []
input_string.reverse
  end
end

asshole = Lexiconomitron.new
puts asshole.shazam([“this”, “is”, “a”, “boring”, “test”])

#iterate through an array. must store it into an variable 
