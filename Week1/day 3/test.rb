# # puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]
#
# # hash =  [
# # 	[]
# # 	[[[]]]
# # 	[]
# # ]
#
# arr = {
# 	[
# 		a,{
# 			"bo", "po", "so","do" "fa"[:secret => {:unlock => ["1, 2, 3, 4, 5,"]}]}
# 		b,{[:secret => {:unlock => ["1, 2, 3, 4, 5,"]}]}
# 		c,{[:secret => {:unlock => ["1, 2, 3, 4, 5,"]}]}
# 		d,{[:secret => {:unlock => ["1, 2, 3, 4, 5,"]}]}
# 		f{[:secret => {:unlock => ["1, 2, 3, 4, 5,"]}]}
# 	]
# }

# module Payable
# 	def salary
# 		puts "got paid!"
# 	end
# end
#
# class Programmer
# 	include Payable #this is how to you include a module
# end
#
# class Designer
# end
#
# prog1 = Programmer.new
#
# prog1.salary

class Car
	def initialize
	end
	def start
	end
end

class Engine
	def move_pistons
		"pshh"
	end
end

puts Car.new.start
