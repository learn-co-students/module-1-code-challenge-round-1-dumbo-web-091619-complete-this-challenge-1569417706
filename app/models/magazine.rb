# + `Magazine#name`
#   + Returns the name of this magazine
# + `Magazine#category`
#   + Returns the category of this magazine
# + `Magazine.all`
#   + Returns an array of all Magazine instances
# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all # WORKS
  #   + Returns an array of all Magazine instances
    @@all
  end

  def self.find_by_name(name) # WORKS
  #   + Given a string of magazine's name, this method returns the first magazine object that matches
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  ## ADDITIONAL METHODS


# + `Magazine#article_titles`
# + Returns an array of the titles of all articles written for that magazine
# + `Magazine#contributors`
# + Returns an array of Author instances who have written for this magazine
# + `Magazine#word_count`
# + Returns a number that is the total number of words for all of the articles in this magazine

  # helper method :)
  def articles # WORKS
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles # WORKS
  # + Returns an array of the titles of all articles written for that magazine
    self.articles.map do |article|
      article.title
    end
  end

  def contributors # WORKS
  # + Returns an array of Author instances who have written for this magazine
    self.articles.map do |article|
      article.author
    end
  end

  def word_count # WORKS
  # + Returns a number that is the total number of words for all of the articles in this magazine
    self.articles.reduce(0) do |sum, article|
      sum + article.content.split.length
    end
  end

end
