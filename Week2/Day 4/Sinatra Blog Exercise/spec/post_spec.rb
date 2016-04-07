require_relative '../models/blog.rb'
require_relative '../models/post.rb'
require 'rspec'
require 'rack/test'

describe "Server Service" do
  include Rack::Test:: Methods

  def app
    Sinatra::Application
  end

it 'should load the home page' do
  get '/'
  expect().to be_ok
end
end
