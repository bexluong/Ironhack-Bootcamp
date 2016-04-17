=begin 
class Car
	attr_writer :noise
	def initialize noise
		@noise = noise
	end

	def make_noise
		puts @noise
	end
#attr_writer creates this new def noise = new_noise
	def noise= new_noise
		@noise = new_noise
	end
end

class RacingCar < Car
	def initialize
		@noise = "BROOOOOOOOOMMMM"
	end
end

my_car = Car.new "bruummm"
my_car.make_noise

racing_car = RacingCar.new
racing_car.make_noise 
#ATTR ALLOWS THIS TO HAPPEN
my_car.noise = "SUPER NOISY noise"



class Person
	attr_reader :name
	attr_accessor :age
	def initialize name, age
		@name = name
		@age = age
	end
end

unai = Person.new "Unai", 24
puts unai.name

unai.age = 25
puts unai.age



classmates = ["Elina", "Mario", "Dan"]
classmates.each do  |name| 
	puts "Good Morning " + name
end

cities = ["miami", "madrid", "barcelona"]

capitalize_cities = cities.map { |city| city.capitalize }

puts capitalize_cities



class Car
	def initialize (engine = Engine.new)
		@engine = engine
	end

	def drive
		@engine.make_noise
	end
end

class Engine
	def make_noise
		puts "Broom"
	end
end

class SuperNiceCar

	def make_noise
		puts "kavrrooom"
	end
end

minicooper = Car.new(Engine.new)
fast_car = Car.new(SuperNiceCar.new)
fast_car.drive
=end
cars = [car1.new, car2.new, car3.new]

class Car

	def initialize 
		@wheels = 4
		@noise = "Brum"
	end
end

class Motorbike
	def initialize 
		@wheels = 2
		@noise = "burp"

class Wheels
	
	def initialize 
		@number_of_wheels = number_of_wheels
	end

	def wheel_counter
		cars.each do |car|
			puts
end

class Noisemaker
	def makenoise
		puts 
end
puts escape






