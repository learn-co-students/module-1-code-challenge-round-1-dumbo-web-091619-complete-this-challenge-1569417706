class Author
  attr_accessor :name

  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select { |article| article.author == self}
  end

  def magazines
    self.articles.map {|article| article.magazine}.uniq
  end

  def add_article(magazine, title, content)

    Article.new(self, magazine, title, content)

  end

  # def 


end
