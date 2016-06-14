class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

puts "The programming languages are: "
array_printer(array_of_languages)

# aged_languages = array_of_languages.map do |language|
#   ProgrammingLanguage.new(language.name, language.age + 1, language.type)
# end

aged_languages = array_of_languages.map do |language|
  language.age + 1
  language
end


# puts "The programming languages aged one year are: "
# array_printer(aged_languages)
#
sorted_languages = aged_languages.sort_by do |language|
  -language.age
end

array_without_java = array_of_languages.delete_if do |language|
  language.name=="Java"
end

# puts "The programming languages sorted by age are: "
# array_printer(sorted_languages)

puts "The programming languages without java:"
array_printer(array_without_java)

array_shuffled = sorted_languages.shuffle
puts "The programming languages shuffled:"
array_printer(array_shuffled)

#how can I prevent java to be deleted from this array?
puts "The normal array is"
array_printer(array_of_languages)

array_without3first = array_of_languages.drop(2)
puts "The array without the two first"
array_printer(array_without3first)
