class Author
  attr_accessor :title, :content, :magazine, :name

  @@all = []

  def initialize(title, content, magazine, name)
    @title = title
    @content = content
    @magazine = magazine
    @name = name
    @@all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def magazines
    article.map do |article|
      article.author
    end
  end


  def self.all
    @@all
  end


end
