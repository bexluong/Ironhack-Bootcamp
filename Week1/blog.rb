 require 'pry'

class Blog
  attr_accessor :post

  def initialize
    @posts = []
  end

  def add_post(post)
    @posts << post
  end

  def publish_front_page
    @posts = @posts.sort { |a, b| b.date <=> a.date }
    # YOU CAN PUT SEVERAL LINES OF CODE IN THE BLOCK
    @posts.each do |post|
      puts post.title
      puts post.date
      puts post.text
    end
  end
end

class Post
  attr_accessor :title, :date, :text

  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end
end

class Sponsored < Post
  def initialize(title, date, text)
    super
    @title = "***** #{@title} ******"
  end
end

blog = Blog.new
blog.add_post Post.new('Post title 1', '2016-03-26', 'Post 1 text')
blog.add_post Sponsored.new('Post title 2', '2016-03-27', 'Post 2 text')
blog.add_post Post.new('Post title 3', '2016-03-28', 'Post 3 text')

blog.publish_front_page
