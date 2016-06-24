require 'imdb'
require 'pry'

class SearchMovies
  attr_accessor :movies,:keywords

  def self.search(keywords)
    @keywords = keywords
    @results = Imdb::Search.new(@keywords).movies
  end


end

# search = SearchMovies.new
# search.search("titanic")
# puts search.titles.class
