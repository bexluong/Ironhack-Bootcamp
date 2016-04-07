require 'sinatra'

get '/' do
  'hola!'
end

# get '/home' do
#
# end

get '/real_page' do
  "The other page"
end

get '/hi' do
  redirect 'real_page'
end
