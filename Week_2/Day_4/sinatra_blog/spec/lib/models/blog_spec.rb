require './lib/models/blog'
require './lib/models/post'

describe Blog do
  subject {described_class.new}

  describe 'initialize' do
    it 'creates an empty array of post' do
      expect(subject.posts).to eq([])
    end
  end

  describe 'add_post' do
    let(:input) { Post.new("title", "date", "text")}
    it 'adds a new blog post to the array of all the posts'do
    subject.add_post(input)
      expect(subject.posts).to include(input)
    end
  end
end
