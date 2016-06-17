require "date"
require "pry"

class Blog
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end

  def publish_full_front_page
    @posts.sort{|a, b| b.date <=> a.date}.each do |post|
      puts post.title
      puts "**************"
      puts post.text
      puts "----------------"
    end
    puts pagination
  end

  # def total_number_of_articles
  #   total_number_of_articles = @posts.length
  # end

  # def number_of_articles_per_page
  #   number_of_articles_per_page = 3
  # end

  # def number_of_pages
  #   number_of_pages = (total_number_of_articles.to_f / number_of_articles_per_page).ceil
  # end

  def number_of_pages
    number_of_pages = (@posts.length.to_f / 3).ceil
  end

  def pagination
    pages = []
    i = 1
    while i < number_of_pages + 1 do
      pages.push(i)
      i+=1
    end
    pages = pages.to_s
    pages
  end

 #to be completed
  def show_page(page = 0)
    @page = page
    @posts = @posts.sort{|a, b| b.date <=> a.date}

    for i in (@page*3)..((@page*3)+2)
      print @posts[i].title
      puts "**************"
      puts @posts[i].text
      puts "----------------"
    end
    puts pagination
    puts "Press 'next' to go to next page and 'previous' to go to previous page "
    choice = gets.chomp
      if choice == "next"
      @page +=1

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

  # def title
  #   @title
  # end
  #
  # def date
  #   @date
  # end
  #
  # def text
  #   @text
  # end

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
my_super_cool_blog.add_post Post.new("Inspiration", Date.new(2016, 03, 15), "I don't have much inspiration for my second post")
my_super_cool_blog.add_post Post.new("Inspired", Date.new(2016, 03, 16), "YAY! Today I am inspired!")
my_super_cool_blog.add_post Post.new("Weather in Barcelona", Date.new(2016, 04, 16), "It's getting warmer in Barcelona")
my_super_cool_blog.add_post Post.new("Birthday!!!", Date.new(2016, 05, 8), "It's my birthday today!!!")
my_super_cool_blog.add_post Post.new("Cherries", Date.new(2016, 05, 17), "I LOVE cherries. So good to eat them in the summer!")
my_super_cool_blog.add_post Post.new("The Beach", Date.new(2016, 06, 12), "Now is BEACH TIME!")
my_super_cool_blog.add_post SponsoredPost.new("Ironhack", Date.new(2016, 06, 13), "First day at Ironhack, loving it!")
my_super_cool_blog.add_post Post.new("Cooking", Date.new(2016, 06, 14), "I want to start cooking again. It would be great to bring food to Ironhack everyday!")
my_super_cool_blog.add_post Post.new("Future", Date.new(2016, 06, 15), "What am I going to do after Ironhack?")


# my_super_cool_blog.number_of_pages
# my_super_cool_blog.show_pagination

# my_super_cool_blog.publish_full_front_page
my_super_cool_blog.show_page(0)
