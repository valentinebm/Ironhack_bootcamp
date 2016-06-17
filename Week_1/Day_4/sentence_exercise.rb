class Sentence
  def initialize(string)
    @string = string
  end

  def count_characters
    puts @string.size
  end
end






puts "Input a sentence"
input = gets.chomp

puts "What do you want to do?"
puts "Enter 1 to count words, enter 2 to count letters, enter 3 to reverse, enter 4 to convert to uppercase, enter 5 to convert to lowercase"
choice = gets.chomp

sentence = Sentence.new(input)

if choice == 2
sentence.count_characters
end
end
