require 'sinatra'
require 'sinatra/reloader'
require_relative './models/blog.rb'
require_relative './models/post.rb'

post1 = Post.new("Day one", Time.new, "Content day, this is a short story. the end")
post2 = Post.new("Day two", Time.new, "yesterday was short, today will be short too. END.")
post3 = Post.new("Day three", Time.new, "Third time's the charm? hasta mannana")
blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)

get '/' do
	@posts = blog.latest_posts
	erb(:posts)
end
