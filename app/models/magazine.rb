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

  def name
    @name
  end

  def category 
    @category
  end

  def article
    Article.all.map do |arti|
      arti.author
    end
  end

  def magazine
    article().select do |mag|
      mag.magazine
    end
  end

  def self.find_by_name(name)
    @name == name
  end

  def article_titles

  end
  
end

# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches

# + `Magazine#article_titles`
#   + Returns an array of the titles of all articles written for that magazine

# + `Magazine#contributors`
#   + Returns an array of Author instances who have written for this magazine

# + `Magazine#word_count`
#   + Returns a number that is the total number of words for all of the articles in this magazine