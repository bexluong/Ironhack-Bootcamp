require 'pry'
require 'imdb'

class MovieQuiz
attr_reader :movie_list

  def initialize(movie_list)
    @movie_list = movie_list
  end

  def random_year
   @movie_list.sample.year
  end

  def correct_answer?
    @movie_list.find {|movie| movie.year == @randomized_year}
  end
end
