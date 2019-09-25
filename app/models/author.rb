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

end
