class Post
  attr_accessor :post, :author, :title, :name

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
