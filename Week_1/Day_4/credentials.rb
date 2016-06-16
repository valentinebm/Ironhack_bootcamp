class Login
  def initialize(user, password)
    #should be an array inside the hash
    @users = {
      :user => "valentine",
      :password => "vbmvbm"
    }
    @user = user
    @password = password
  end

  def validate_login
    return true if @user == @users[:user] && @password == @users[:password]
  end
end

class AI
  def self.powerful_algorithm
    puts "Ask me anything you want. ANYTHING!"
    input_string = gets.chomp
    puts "Ok, the answer is:"
    puts input_string.size
  end
end

puts "Enter your username"
user = gets.chomp
puts "Enter your password"
password = gets.chomp

Login.new(user, password).validate_login == true ? AI.powerful_algorithm :
puts("Incorrect!")

# amIlogged == true ? "yes": "no"
