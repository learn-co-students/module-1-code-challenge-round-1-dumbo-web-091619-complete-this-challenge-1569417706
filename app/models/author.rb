#+ `Author#name`
# + Returns the name of the author as a string
# + `Author.all`
#   + Returns an array of all Author instances
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count


class Author
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all # WORKS
  #   + Returns an array of all Author instances
    @@all
  end

  # helper method :) 
  def articles # WORKS
    Article.all.select do |article|
      article.author == self
    end
  end

  # helper method :)
  def longest_article # WORKS
    self.articles.max_by do |article|
      article.content.length
    end
  end

  def self.most_verbose # WORKS 
  #   + Returns the Author instance who has the longest article by word count
  self.all.max_by do |author|
      author.longest_article.content.length
    end
  end

  ## ADDITIONAL METHODS


# + `Author#add_article(magazine, title, content)`
# + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
# + `Author#articles`
# + Returns an array of Article instances the author has written
# + `Author#magazines`
# + Returns a **unique** array of Magazine instances for which the author has contributed to
# + `Author#show_specialties`
# + Returns a **unique** array of categories of the magazines for which the author has contributed to
# + `Author.most_active`
# + Returns the Author instance who has written the greatest number of articles

  def add_article(magazine, title, content)
  # + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.

  end

  # def articles
  # + Returns an array of Article instances the author has written
  #   see line 25
  # end

  def magazines ## UNIQUE!
  # + Returns a **unique** array of Magazine instances for which the author has contributed to

  end

  def show_specialties ## UNIQUE!
  # + Returns a **unique** array of categories of the magazines for which the author has contributed to

  end

  def self.most_active
  # + Returns the Author instance who has written the greatest number of articles

  end

end
