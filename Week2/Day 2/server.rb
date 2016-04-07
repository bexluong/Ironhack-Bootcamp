require "sinatra"
require "sinatra/reloader"
require 'pry'
get "/" do
  "My first Sinatra app."
end

get "/hi" do
  @greetings = "Hello, world! "
  erb(:hipage)
end

get "/author" do
  erb(:author)
end

get "/test" do
  t = Time.now()
  @time = t.strftime("%H:%M:%S")
  erb(:jon)
end

get "/pizza" do
  @ingredients = [ "Tomatos","Basil","Buffalo Mozzarella","Arugula" ]
  erb(:pizza)
end

# anything after the 2nd / is a parameter
get "/users/:username" do
  @username = params[:username]

  erb(:user_profile)
end

get "/hours/ago/:hour" do
  @hour = params[:hour]
  @hour = @hour.to_i
  t = Time.now()
  @time = t.strftime("%H").to_i
  @time_now = @time - @hour
  erb(:hours_ago)
end
