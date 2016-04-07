require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable:sessions

get '/login_page' do
"hello"
erb(:loginpage)
end

# post '/profile_page' do
#   session[:user_name] = "alberto"
#   session[:password] = "butterflies"
# end
