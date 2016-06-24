require 'sinatra'
require 'sinatra/reloader'
require 'rspec'
require './lib/models/blog'
require './lib/models/post'
require 'date'
require 'time'
require "pry"

my_blog = Blog.new
post1 = Post.new("Alina", "Good luck on this new blog!!", Time.new(2016, 1, 31, 00,00,00, "-06:00"), "One day baby, well be old\noh baby well be old\n think of all the stories \n that we couldve told", "Music")
post2 = Post.new("Lorenzo", "Focus!", Time.new(2016, 1, 31, 00,00,00, "-06:00"), "Now is time to focus!", "Self-development")


my_blog.add_post(post1)
my_blog.add_post(post2)


get '/' do
  @posts = my_blog.latest_posts
  erb :home
end

get '/post_details/:number' do
  @posts = my_blog.latest_posts
  @number = params[:number]
   erb :post_details
end

get '/new_post' do
  erb :new_post
end

post '/new_post' do
  @author = params[:name]
  @title = params[:title]
  @date = Time.now
  @text = params[:text]
  @category = params[:category]

my_blog.add_post(Post.new(@author, @title, @date, @text, @category))
redirect to '/'
end
