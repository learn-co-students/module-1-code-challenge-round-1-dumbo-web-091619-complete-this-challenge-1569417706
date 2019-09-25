# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches
#==========================================================================================

### Associations and Aggregate Methods

# + `Magazine#word_count`
#   + Returns a number that is the total number of words for all of the articles in this magazine

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
    Article.all.select do | article |
      article.magazine == self
    end
  end

  def article_titles
    articles.map do | article |
      article.title
    end
  end


  def contributors
    articles.map do | article |
      article.author
    end
  end

  # + `Magazine#word_count`
#   + Returns a number that is the total number of words for all of the articles in this magazine

  #  def word_count
  #    articles.reduce(0) { | sum ,article |  sum+article.}
  #  end

# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches

   def self.find_by_name(name)
     Magazine.all.find do | magazine |
      magazine.name == self
     end
   end

end
