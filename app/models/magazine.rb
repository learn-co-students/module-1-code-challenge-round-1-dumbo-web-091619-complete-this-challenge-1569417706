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

  def self.find_by_name(name)
    self.all().find do |magazine|
      magazine.name == name 
    end 
  end 

  def articles 
    Article.all().select do |article|
      article.magazine == self 
    end 
  end 

    def article_titles
      self.articles.map do |article|
        article.title 
      end 
    end 

    def contributors
      self.articles().map do |article|
        article.author
      end 
    end 

    # `Magazine#word_count`
    # + Returns a number that is the total number of words for all of the articles in this magazine
end
