class Author
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
  @@all << self
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |author|
      author.magazine
    end
  end

  def show_specialties
    magazines.map do |author|
      author.category
    end
  end

  def self.all
    @@all
  end

end
