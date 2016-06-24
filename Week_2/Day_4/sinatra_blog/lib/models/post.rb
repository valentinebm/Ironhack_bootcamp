class Post
  attr_accessor :author, :title, :date, :text, :category
  def initialize(author, title, date, text, category)
    @author = author
    @title = title
    @date = date
    @text = text
    @category = category
  end
end
