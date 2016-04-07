require 'pry'

class Room
  attr_accessor :room_name, :scene
  def initialize(room_name, scene)
    @room_name = room_name
    @scene = scene
  end

  jade = Room.new('Jade', 'Beach')
  citrine = Room.new('Citrine', 'Waterfall')
  rose = Room.new('Rose', 'Forest of wild flowers')
  aventurine = Room.new('Aventurine', 'A sea of greenery')
  amethyst = Room.new('Amethyst', 'A dark cave')

  class Player
    def initialize
      @name = name
      end

    def start_room(_room_name)
      puts "You are in the #{@room_name} room.  In front of you, you see #{@scene}."
      puts 'There is a a door to your North'
      print '> '

      choice = gets.chomp.downcase

      if choice == 'north'
        aventurine.start_room

      elsif choice == 'south' || choice == 'west' || choice == 'east'
        start_room

      else
        game_over

      end
      end

    def game_over
      puts "You can't go that way. As a result you die, a slow but happy death :| "
      end
    end
end

new_player = Player.new
new_player.start_room(jade)
