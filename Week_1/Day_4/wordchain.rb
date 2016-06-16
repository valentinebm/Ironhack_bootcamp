require "pry"
require 'ruby-dictionary'

class WordChain
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def find_chain(word1, word2)
    # if dictionary.exists?(word1) && dictionary.exists?(word2)
      array = [word1]
      wordNew = word1.split("")

      until wordNew.join == word2

        for i in 0..(wordNew.length)

          wordNew[i] = word2.split("")[i]
          # binding.pry
          if @dictionary.exists?(wordNew.join)
            unless array.include?(wordNew.join)
            # # binding.pry
            array.push(wordNew.join)
          end
          else
            wordNew = word1.split("")
            # binding.pry
        end

        end
      end
        puts array
  end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)

my_chain.find_chain("cat", "dog")
