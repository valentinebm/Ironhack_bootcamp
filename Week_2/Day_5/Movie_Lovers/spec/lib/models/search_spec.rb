require './lib/models/search'
require 'imdb'


describe SearchMovies do
  subject {described_class.new}

  describe 'initialize' do
    it 'creates an empty array of movies'do
    expect(subject.movies).to eq([])
    end
  end

  describe 'search' do
    it 'search for relevant movies and add them to the array'do
    subject.search("Titanic")
    expect(subject.movies).to be > 0
    end
  end

end
