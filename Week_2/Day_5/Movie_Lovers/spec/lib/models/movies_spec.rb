require './lib/models/movies'
require 'imdb'

describe Movies do
  subject {described_class.new("0120338")}

  describe 'initialize' do
    it 'creates a movie with the right id'do
    expect(subject.id).to eq("0120338")
    end
  end

  describe 'initialize' do
    it 'creates a movie with the right title'do
    expect(subject.title).to eq("Titanic")
    end
  end

  describe 'initialize' do
    it 'creates a movie with the right rating'do
    expect(subject.rating).to eq(7.7)
    end
  end

  describe 'initialize' do
    it 'creates a movie with the right poster'do
    expect(subject.poster).to eq("http://ia.media-imdb.com/images/M/MV5BMjExNzM0NDM0N15BMl5BanBnXkFtZTcwMzkxOTUwNw@@.jpg")
    end
  end

  describe 'initialize' do
    it 'creates a movie with the right url' do
    expect(subject.poster).to eq("http://akas.imdb.com/title/tt0120338/combined")
    end
  end

end
