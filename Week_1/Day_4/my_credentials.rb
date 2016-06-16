require "pry"


class UserSession
  def initialize(username, password, users)
    @username = username
    @password = password
    @users = users
  end

  def check_credentials
    # binding.pry

    for i in 0...@users.length
      # binding.pry
      if @username == @users[i][:username] && @password == @users[i][:password]
        checked = true
      end
    end

      if checked == true
      login(@username)

      else
        puts "Invalid credentials"
      end
  end

  def login(name)
    puts "Hi, #{@username} you're logged in!"
  end

end

users = [
  {:username=> "valentine", :password => "vbmvbm"},
  {:username=> "jim", :password => "123"}
]

puts "Enter your username"
username = gets.chomp
puts "Enter your password"
password = gets.chomp

session = UserSession.new(username, password, users)
session.check_credentials
