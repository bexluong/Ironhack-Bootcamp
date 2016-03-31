require 'pry'

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
      @name = name
      @city = city
      @capacity = capacity
      @price = price
  end
end

   homes = [
    Home.new("Nizar's place", "San Juan", 2, 42),
    Home.new("Fernando's place", "Seville", 5, 47),
    Home.new("Josh's place", "Pittsburgh", 3, 41),
    Home.new("Gonzalo's place", "Málaga", 2, 45),
    Home.new("Ariel's place", "San Juan", 4, 49),
    Home.new("Bex's crib", "Toronto", 2, 170),
    Home.new("Jarren's palace", "Roncy", 5, 250),
    Home.new("Connie's Condo", "Seattle", 2, 100),
    Home.new("Alister's Hut", "Maldives", 3, 35),
    Home.new("William & Jess's place", "Big Sur", 4, 400)
  ]
#first iteration
  # homes.each do |hm|
  #   puts "#{hm.name} place in #{hm.city} \n Price: #{hm.price} a night"
  # end
#Iteration #2: Sorting

#what would you like to sort by?

  	def sorting_default
    sorted_by_price = homes.sort do |home1, home2|
      home1.price <=> home2.price
    	end
    sorted_by_price.each do |hm|
      puts "Rent #{hm.name} in #{hm.city} for only #{hm.price} per night!"
    	end
	end

  	def sorting_prompt
    	puts "See homes by Highest price, Lowest price or Capacity?"
    	choice_sort = gets.chomp.downcase

      if choice_sort == "highest price"
        homes.sort do |home1, home2|
          home2.price <=> home1.price
      	end
      elsif choice_sort == "lowest price"
        homes.sort do |home1, home2|
          home1.price <=> home2.price
        	end
      elsif choice_sort == "capacity"
        homes.sort do |home1, home2|
          home1.capacity <=> home2.capacity
        end
      else
          puts "Unknown answer, please try again"
          choice_sort = gets.chomp.downcase
      end
  	end

    def city_filter
      puts "Please enter the city:"
      city_choice = gets.chomp.capitalize
      homes.select do |hm|
        hm.city == "#{city_choice}"
      end
      city_choice.each do |hm|
        puts "Rent #{hm.name} in #{hm.city} for only #{hm.price} per night!"
      	end
    end

    def average_home_price
      current_homes = homes.reduct do |sun, hm|
        sum + hm.price
      end
  puts "The average price of your selection is:"
  puts current_homes/homes.length

  def name_your_price
    puts "What is your price per night?"
    price_choice = gets.chomp
    perfect_price = homes.find do |hm|
      hm.price == price_choice
    end
        
