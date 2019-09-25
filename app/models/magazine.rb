class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def authors
    articles.map {|article| article.author}
  end

  def article_titles
    articles.map { |article| article.title }
  end

  def contributors
    articles.map {|article| article.author}
  end

  def word_count
    article_count = 0
    articles.each do |article|
      article_count += article.split(" ").length
    end
    article_count
  end


end
