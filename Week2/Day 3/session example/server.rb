require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable:sessions
get '/users/:username' do
  @username = params[:username]
  #binding.pry
  'hello' + @username
end

get '/fool' do
  status(418)
  "I'm a tea pot"
end

get "/session_test/:text" do
  text = params[:text]
  session[:saved_value] = text #its a hash you can add whatever you want
end

get "/session_show" do
  "now we are dee seassion: " + session[:saved_value]
end

get '/memory' do
  erb(:memory)
end
