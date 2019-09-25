class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    # + `Author#name`
    #   + Returns the name of the author as a string
    @name = name
    @@all << self
  end


  def self.all
  # + `Author.all`
  #   + Returns an array of all Author instances
    @@all
  end


  def self.most_verbose
  # + `Author.most_verbose`
  #   + Returns the Author instance who has the longest article by word count

  end


  def add_article(magazine, title, content)
  # + `Author#add_article(magazine, title, content)`
  #   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
    Article.new(self, magazine, title, content)
  end


  def articles
  # + `Author#articles`
  #   + Returns an array of Article instances the author has written
    Article.all.filter { |article| article.author == self }
  end


  def magazines
  # + `Author#magazines`
  #   + Returns a **unique** array of Magazine instances for which the author has contributed to
    Article.all.filter { |article| article.author == self }.map { |article| article.magazine }.uniq
  end


  def show_specialties
  # + `Author#show_specialties`
  #   + Returns a **unique** array of categories of the magazines for which the author has contributed to
    self.magazines.map { |magazine| magazine.category }.uniq.sort
  end


  def self.most_active
  # + `Author.most_active`
  #   + Returns the Author instance who has written the greatest number of articles
    author_count = Hash.new(0)
    Author.all.each {|author| author_count[author] += 1}
    author_count.sort_by { |pet,number| number}.last[0]

    "I didn't finish this method"
  end









end
