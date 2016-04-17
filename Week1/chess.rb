# require 'pry'
#
# class Board
#   attr_accessor :board
#   # def initialize
#   #   @chess_pieces = [:bR, :wR]
#   #   @chess_grid = Array.new(8) { Array.new(8, '--') }
#   # end
#   def initialize
#     @board = [
#       [:bR, nil, nil, nil, nil, nil, nil, :bR],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [nil, nil, nil, nil, nil, nil, nil, nil],
#       [:wR, nil, nil, nil, nil, nil, nil, :wR]]
#   end
#
#   def check_positions(row, col)
#     @board[row][col]
#   end
# end
class Rook
  def move_validation(origin, destination)
    @origin = origin
    @destination = destination
    if @orgin[0] == @destination[0] || @orgin[1] == @destination[1]
      puts 'LEGAL'
    else
      puts 'ILLEGAL'
    end
  end
end

gamers = Rook.new.move_validation([0, 0], [0, 5])
