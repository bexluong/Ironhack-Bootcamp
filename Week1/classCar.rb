
 class Car
attr_reader :noise
def initialize noise
	@noise = noise
	end
end

#better to have two class for each thing to do vs 
#having a method in the Car. 

class NoiseMaker

	def self.make_noise item 
		puts item.noise
		puts item.noise
		#2.times { puts item.noise }
	end
end

class 

quiet_car = Car.new "Broom!"
NoiseMaker.make_noise quiet_car


#a car holds names of the cities it visits
#should have a method cities that return the array
=begin
class Crusing_car
	attr_accessor :cities
	def initialize
		@cities = []
	end

	def visited_cities(city)
		@cities << city
	end
#need this to return all the cities
	#def all_cities
	#	@cities
	#	end
end

nice_car = Crusing_car.new
nice_car.visited_cities("Copenhagen") 
nice_car.visited_cities("Malmo")
nice_car.visited_cities("Hamburg")
nice_car.visited_cities("New York")

puts nice_car.cities

=end







