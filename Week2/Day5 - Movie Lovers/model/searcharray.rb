require 'pry'
require 'imdb'

class MovieSearch

  def movie_query(word)
  new_search = Imdb::Search.new(word)
  search_results = new_search.movies[0..12]
  posters_results = search_results.delete_if {|movie| movie.poster == nil}
  posters_results[0..8]
  end
end
