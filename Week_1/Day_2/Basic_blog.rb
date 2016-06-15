require "date"
require "pry"

class Blog
  def initialize
    @container = []
  end

  def add_post(post)
    @container.push(post)
  end

  def publish_full_front_page
    @container.sort{|a, b| b.date <=> a.date}.each do |post|
      puts post.title
      puts "**************"
      puts post.text
      puts "----------------"
    end
  end

  def number_of_articles
    number_of_articles = @container.length
  end

  def number_of_pages
    number_of_pages = (number_of_articles.to_f / 3).ceil
  end

  def show_pagination
    pages = []
    i = 1
    while i < number_of_pages + 1 do
      pages.push(i)
      i+=1
    end
    pages = pages.to_s
    puts pages
  end

  
end

class Post
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def title
    @title
  end

  def date
    @date
  end

  def text
    @text
  end

end

class SponsoredPost < Post
  def initialize(title, date, text)
    @title = title
    @date = date
    @text = text
  end

  def title
    @title = "******" + @title + "******"
  end

end


my_super_cool_blog = Blog.new

my_super_cool_blog.add_post Post.new("Unicorns", Date.new(2016, 02, 22), "Unicorns are awesome. And you know what? They exist!")
my_super_cool_blog.add_post Post.new("Cherries", Date.new(2016, 05, 17), "I LOVE cherries. So good to eat them in the summer!")
my_super_cool_blog.add_post Post.new("The Beach", Date.new(2016, 06, 12), "Now is BEACH TIME!")
my_super_cool_blog.add_post SponsoredPost.new("Ironhack", Date.new(2016, 06, 13), "First day at Ironhack, loving it!")
my_super_cool_blog.add_post Post.new("Cooking", Date.new(2016, 06, 14), "I want to start cooking again. It would be great to bring food to Ironhack everyday!")
my_super_cool_blog.add_post Post.new("Cooking", Date.new(2016, 06, 14), "I want to start cooking again. It would be great to bring food to Ironhack everyday!")

# my_super_cool_blog.publish_full_front_page
# my_super_cool_blog.number_of_pages
my_super_cool_blog.show_pagination
# my_super_cool_blog.publish_full_front_page
