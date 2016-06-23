require './lib/models/post'

describe Post do
  subject {described_class.new("Blog post 1", "23.96.2016", "This is my first blog post" )}

  describe 'initialize' do
    it 'creates a post with the right title' do
      expect(subject.title).to eq("Blog post 1")
    end

    it 'creates a post with the right date' do
      expect(subject.date).to eq("23.96.2016")
    end

    it 'creates a post with the right text' do
      expect(subject.text).to eq("This is my first blog post")
    end

  end
end
