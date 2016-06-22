require "pry"
class PasswordChecker
  def initialize(username, password)
    @username = username
    @password = password

    @last_part = @username.partition("@").last
    @domain = @last_part.partition(".").first

  end

  def check_password
    uppercase_letters = @password.scan(/[A-Z]/)
    lowercase_letters = @password.scan(/[a-z]/)
    numbers = @password.scan(/\d/)
    symbol = @password.scan(/\W/)

    if @password.length < 7
      false

    elsif lowercase_letters.length < 1 || numbers.length < 1 || symbol.length < 1 || uppercase_letters.length < 1
      false

    elsif @password.include? @username || @domain
      false

    else
      true
    end

# puts lowercase_letters.length
# puts numbers.length
# puts symbol.length

  end
end
