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

  describe 'posts' do
    post1 = Post.new("title", "date", "text")
    post2 = Post.new("another title", "date", "another text")
    it 'shows all the posts from the array' do
      subject.add_post(post1)
      subject.add_post(post2)
    array = [post1, post2]
      expect(subject.posts).to eq(array)
    end
  end

  describe 'latest_posts' do
    post1 = Post.new("First", Date.new(2016, 01, 01), "First day of the year")
    post2 = Post.new("Last", Date.new(2016, 12, 31), "Last day of the year")
    it 'sorts posts in chronological order' do
    subject.add_post(post1)
    subject.add_post(post2)
    sorted = subject.latest_posts
    expect(sorted.first.date).to be > sorted.last.date
    end
  end

end
