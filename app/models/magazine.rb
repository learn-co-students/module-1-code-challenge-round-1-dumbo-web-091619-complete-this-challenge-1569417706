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
    # given name, return first mag object
    Magazine.all.find { |mag| mag.name == name }
  end

  def articles
    Article.all.select { |art| art.magazine == self }
  end 

  def article_titles
    self.articles.map { |art| art.title }
  end 

  def contributors
    self.articles.map { |art| art.author }.uniq 
  end 

  def word_count
    # return # that is total # of words for all arts in mag
    self.articles.reduce(0) do |sum, art|
      sum + art.content.split.count
    end
  end 
end