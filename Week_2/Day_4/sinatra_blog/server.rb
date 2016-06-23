require 'sinatra'
require 'sinatra/reloader'
require 'rspec'
require './lib/models/blog'
require './lib/models/post'

my_blog = Blog.new
post1 = Post.new("First post", "23.06.2016", "This is my first post ever!")
post2 = Post.new("Second post", "24.06.2016", "This is my second post, how exciting!")
post3 = Post.new("Third post", "25.06.2016", "This is my third post, wow!")

my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

get '/' do
  @posts = my_blog.posts
  erb :home
end
