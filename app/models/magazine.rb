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
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributors
    articles.map do |article|
      article.author
    end
  end

  def content
    content = articles.map do |article|
      article.content
    end
  end

  def words
    content.map do |content_instance|
      content_instance.split(" ").size
    end
  end

  def word_count
    words.reduce(0) do |sum, word|
     sum + word
    end
  end

  def self.find_by_name(name_to_find)
    self.all.find do |magazine|
      magazine.name == name_to_find
    end
  end


end
