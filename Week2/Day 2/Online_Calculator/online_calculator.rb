require "sinatra"
require "sinatra/reloader"
require 'pry'

get "/add" do
  erb(:add)
end

post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  @operation = params[:operation]
  if @operation == "addition"
    result = first + second
    "The addition of #{first} & #{second} is #{result}"
  elsif @operation == "subtraction"
    result = first - second
    "The subtraction of #{first} & #{second} is #{result}"
  elsif @operation == "multiplication"
    result = first * second
    "The multiplication of #{first} & #{second} is #{result}"
  elsif @operation == "division"
    result = first / second
    "The division of #{first} & #{second} is #{result}"
  end

end

get "/add" do
  erb(:add)
end

#alternative is to create a hash and depending which "operation" do different things. addtion = + 
