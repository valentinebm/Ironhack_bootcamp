require 'sinatra'
require 'sinatra/reloader'
require 'rspec'
require './lib/models/blog'
require './lib/models/post'
require 'date'
require "pry"

my_blog = Blog.new
post1 = Post.new("Marie\'s birthday", Date.new(2016, 05, 20), "Today, it\'s my sister Marie\'s birthday!")
post2 = Post.new("Zoé\'s birthday", Date.new(2016, 01, 31), "Today, it\'s my sister Zoé\'s birthday!")
post3 = Post.new("MY birtdhay", Date.new(2016, 05, 8), "Today, it\s MY birthday!")

my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

get '/' do
  @posts = my_blog.latest_posts
  erb :home
end

get '/post_details/:number' do
  @posts = my_blog.latest_posts
  @number = params[:number]
   erb :post_details
 end
