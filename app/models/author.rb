class Author
  attr_accessor :name
  attr_reader

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_verbose
    Article.all.max_by{|article| article.content.split(' ').count }.author
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select{|article| article.author == self}
  end

  def magazines
    self.articles.map{|article| article.magazine}
  end

  def show_specialties
    self.magazines.map{|magazine| magazine.category}.uniq
  end

  def self.most_active
    Author.all.max_by{|author| author.articles.count}
  end

end
