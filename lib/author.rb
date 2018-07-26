#asdfl;kj

class Author

  attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    self.add_post(post)
  end

  def self.post_count
    Post.all.count
  end

end
