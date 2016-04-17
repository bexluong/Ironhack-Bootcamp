require 'sinatra'
require 'sinatra/reloader'
require_relative './models/blog.rb'
require_relative './models/post.rb'

post1 = Post.new('I just wanna write write & write & blog', Time.new, 'Content day, this is a short story. the end', "bex", "life rants")
post2 = Post.new('Life as a blogger', Time.new, 'yesterday was short, today will be short too. END.',"bex", "life rants")
post3 = Post.new('Lucky Number Three', Time.new, 'Third time\'s the charm? hasta mannana', "bex", "life rants")
blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)

get '/' do
  @posts = blog.latest_posts
  erb(:posts)
end

get "/post_details/:index" do
	#this makes a variable, saves the URL params into the index var
	@index = params[:index].to_i
	#declares posts to rep sum of blog posts
	@posts = blog.latest_posts
	# declars post details as equal to the index.
	@post_details = @posts[@index]
	erb(:post_details)
end

get "/new_post" do
   erb(:created_post)
end

post "/created_post" do
  title_received = params[:title]
	content_received = params[:content]
	author_received =  params[:author]
  category_received = params[:category]
  created_post = Post.new(title_received, Time.new, content_received, author_received, category_received)
  blog.add_post(created_post)
  redirect "/"
end
