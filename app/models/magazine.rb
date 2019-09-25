
class Magazine
  # Magazine#name
  # Returns the name of this magazine
  # Magazine#category
  # Returns the category of this magazine
  attr_reader :name, :category
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  # Magazine.all
  # Returns an array of all Magazine instances
  def self.all
    @@all
  end


  # Magazine.find_by_name(name)
  # Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name)
    Article.all.select do |article|
      article.magazine.name == name
    end
  end

  # Working somehow, but not finished
  # Magazine#article_titles
  # Returns an array of the titles of all articles written for that magazine
  def article_titles
    Article.all.map do |article|
      if article.magazine == self
      article.title
    end
    end
  end

  # Magazine#contributors
  # Returns an array of Author instances who have written for this magazine

  # Magazine#word_count
  # Returns a number that is the total number of words for all of the articles in this magazine

end
