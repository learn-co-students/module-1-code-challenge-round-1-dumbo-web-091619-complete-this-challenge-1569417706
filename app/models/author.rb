class Author
  attr_reader :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all
    @@all
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
    my_magazines = articles.map do |article|
      article.magazine
    end
    my_magazines.uniq
  end

  def show_specialties
    categories = magazines.map do |magazine|
      magazine.category
    end
    categories.uniq
  end

end
