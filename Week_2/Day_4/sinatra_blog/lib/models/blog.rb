class Blog
attr_accessor :posts
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end
end
