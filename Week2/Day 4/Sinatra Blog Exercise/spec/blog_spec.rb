require_relative '../models/blog.rb'
require_relative '../models/post.rb'
require 'rspec'
require 'rack/test'

RSpec.describe Blog do
  include Rack::Test:: Methods

before :each do
  @blog = Blog.new
  post1 = Post.new("Day one", Time.new, "Content day, this is a short story. the end")
  post2 = Post.new("Day two", Time.new, "yesterday was short, today will be short too. END.")
end

it '#latest_posts returns an array of posts' do
  expect(@blog.posts).to eq([])
end

end
