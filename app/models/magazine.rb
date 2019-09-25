class Magazine
  attr_accessor :name, :category
  # + `Magazine#name`
  #   + Returns the name of this magazine
  # + `Magazine#category`
  #   + Returns the category of this magazine
  @@all = []

  def initialize(name, category)
  # initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.
    @name = name
    @category = category
    @@all << self
  end


  def self.all
  # + `Magazine.all`
  #   + Returns an array of all Magazine instances
    @@all
  end


  def self.find_by_name(name_string)
  # + `Magazine.find_by_name(name)`
  #   + Given a string of magazine's name, this method returns the first magazine object that matches
    Magazine.all.find { |magazine| magazine.name == name_string }
  end


  def article_titles
  # + `Magazine#article_titles`
  #   + Returns an array of the titles of all articles written for that magazine
    Article.all.filter { |article| article.magazine == self }.map { |article| article.title }.sort
  end


  def contributors
  # + `Magazine#contributors`
  #   + Returns an array of Author instances who have written for this magazine
    Article.all.filter { |article| article.magazine == self }.map { |article| article.author }.uniq
  end


  def word_count
  # + `Magazine#word_count`
  #   + Returns a number that is the total number of words for all of the articles in this magazine
    Article.all.filter { |article| article.magazine == self }.map { |article| article.content.split.size }.sum
  end
end
