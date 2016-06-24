require 'imdb'

class Movies
attr_accessor :id, :title, :rating, :poster, :url
  def initialize(id)
    @id = id
    @title = Imdb::Movie.new(@id).title
    @rating = Imdb::Movie.new(@id).rating
    @poster = Imdb::Movie.new(@id).poster
    @url = Imdb::Movie.new(@id).url
  end

end
