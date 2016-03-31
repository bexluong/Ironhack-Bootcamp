require 'pry'

class Room

def start
	puts "You've entered the Game of Rooms."
	puts "You see five doors, on each door hangs a crystal: Jade, Citrine, Rose Quartz, Aventurine & Amethyst."
	puts "Choose a crystal?"
	print "> "

	room_choice = gets.chomp

	if room_choice == "Jade"
		beach_room

	elsif room_choice =="Citrine"
		air_room

	elsif room_choice == "Rose Quartz"
		waterfall_room

	elsif room_choice == "Aventurine"
		green_room

	elsif room_choice == "Amethyst"
		swimming_room 

	else
		game_over
		
	end
end
def game_over
	puts "You can't go that way. As a result you die, a slow but happy death :| "
end


def beach_room
	puts "The door transported you into a tropical beach.  Beyond the strand you see an endless crystal blue ocean."
	puts "To either side of you, you see an endless stretch of white sand."
	puts "Which direction do you go? "
	choice = gets.chomp
	print "> "

	if choice == "North" || choice == "South"
		start
	elsif choice == "West" || choice == "East"
		puts "Sorry you can't go that way"
		beach_room
	else
		game_over
	end
end

def green_room
	puts "You've entered into a room full of plants!  You take a breathe of fresh air before you decide, which direction to go?"

	choice = gets.chomp
	print "> "

	if choice == "West" || choice == "South"
		start
	elsif choice == "North" || choice == "East"
		puts "Sorry you can't go that way"
		green_room
	else
		game_over
	end
end

def waterfall_room
	puts "You are immediately drenched in water!  You wipe your eyes to see an enormous waterfall before you."
	puts" Feeling wet and cold, you decide to leave.  Which direction will you go?" 

	choice = gets.chomp
	print "> "

	if choice == "West" || choice == "South"
		start
	elsif choice == "North" || choice == "East"
		puts "Sorry you can't go that way"
		waterfall_room
	else
		game_over
	end
end

def air_room
	puts "You find yourself on a tightrope, suspended in the clouds."
	puts "With butterflies in your tummy. Which direction will you go?" 

	choice = gets.chomp
	print "> "

	if choice == "West" || choice == "East"
		start
	elsif choice == "North" || choice == "South"
		puts "Sorry you can't go that way"
		air_room	
	else
		game_over
	end
end

def swimming_room 
	puts "You've pluged into a swimming pool!"
	puts "Which direction do you want to swim?" 

	choice = gets.chomp
	print "> "

	if choice == "East" || choice == "North"
		start
	elsif choice == "West" || choice == "South"
		puts "Sorry you can't go that way"
		beach_room
	else
		game_over
	end
end			

start