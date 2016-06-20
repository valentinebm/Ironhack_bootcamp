class Lexiconomitron
  def eat_t(word)
    word.downcase.tr('t', '')
  end

  # def eat(word)
  #   word.split('').select { |char|
  #     char.downcase != 't'
  #   }.join
  # end

  # def shazam
  #   array = string.split(' ')
  #   array.each do |word|
  #   word.reverse!
  # end
  #   array.join(", ")
  # end

  def shazam(words)
    words.map!(&:reverse)
    [eat_t(words.first), eat_t(words.last)]
  end

  def oompa_loompa(words)
    words.select do |word|
      word.size <= 3
    end.map {|word| eat_t(word)}

  end
end
