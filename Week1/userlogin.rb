
#ask for user and pw
#enter text and counts the length
require 'pry'

class User
attr_accessor :username, :password
attr_reader :usersinfo

@@usersinfo = {}
  def initialize (username, password)
    @username = username
    @password = password
    @usersinfo[username] = password
  end

  def signup
    puts "Please choose a username:"
      @username = gets.chomp
    puts "Please choose a password:"
      @password = gets.chomp
      @@usersinfo  << [@username, @password]
  end
end

class UserLogin

  def user_login (name, password)
    puts "Please enter user name:"
      @username = gets.chomp
    puts "Please enter your password:"
      @password = gets.chomp
  end

  def check_login
    if @@usersinfo.select do |un|

      TextCounter.new
    else
      puts "Uh oh! Username & pw don't match.  Sorry try again."
    end
  end

  class TextCounter

    def counttext
      puts "Please enter in the text:"
        text_input = gets.chomp
      puts text_input.length
    end
  end
