 require 'ruby-dictionary'
 require 'pry'

 class WordChain
   attr_accessor :dictionary

   def initialize(dictionary)
     @dictionary = dictionary
   end

   def find_chain(start_word, end_word)
     (start_word..end_word).each {|x|
       if @dictionary.exists?(x) == true
         puts x
       end
     }
   end
 end

 dictionary = Dictionary.from_file("/usr/share/dict/words")

 my_chain = WordChain.new(dictionary)
 my_chain.find_chain("cat", "dog")
