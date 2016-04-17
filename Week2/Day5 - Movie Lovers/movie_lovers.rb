require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './model/searcharray.rb'
require_relative './model/moviequiz.rb'
require 'imdb'

get '/' do
  erb(:search)
end

post '/results' do
  @search_word = params[:search_word]
  my_search = MovieSearch.new
  @search_results = my_search.movie_query(@search_word)
  newquiz = MovieQuiz.new(@search_results)
  @randomized_year = newquiz.random_year
  @correctmovie = newquiz.correct_answer
  @moviechoice = params[:choice]
  @validation = newquiz.validation
  erb(:movie_results)
end

post '/feedback' do
  erb(:feedback)
end
