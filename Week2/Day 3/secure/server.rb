require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require './securepw'

enable:sessions

pwcheck = PasswordChecker.new

get '/' do
  erb(:form)
end

post '/checklogin' do
  username_input = params[:username]
  pw_input = params[:password]

  pwcheck.check_password(username_input, pw_input)
  # binding.pry

  if pwcheck.validation == true
    session[:is_logged] = true
    redirect "/cong"
	else
		redirect "/"
	end
end

get '/cong' do
  erb(:cong)
end


get "/logout" do
	session[:is_logged] = false
	redirect "/"
end
