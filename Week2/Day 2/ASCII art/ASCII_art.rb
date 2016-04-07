require "sinatra"
require "sinatra/reloader"
require "artii"
require 'pry'

get "/ascii/?:random_word?/?:random_font?" do

  if @random_word = params[:random_word]
  else
    @random_word == nil
    @random_word = "Adriasssssta!"
  end
  if @random_font = params[:random_font]
  else
    @random_font == nil
      @random_font = "graffiti"

  end
    @a = Artii::Base.new :font => @random_font


  erb(:randomness)
end

# get "/ascii/?:random_word?/?:random_font?" do
#   "hello#{params[:random_word]}, #{params[:random_font]}"
#
#   @a = Artii::Base.new :font => @random_font
#
#   erb(:randomness)
#
# get '/test/?:p1?/?:p2?' do
#   "Hello #{params[:p1]}, #{params[:p2]}"
# end
