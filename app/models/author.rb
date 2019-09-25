# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count
#==========================================================================================

### Associations and Aggregate Methods

# + `Author#magazines`
#   + Returns a **unique** array of Magazine instances for which the author has contributed to
# + `Author#show_specialties`
#   + Returns a **unique** array of categories of the magazines for which the author has contributed to
# + `Author.most_active`
#   + Returns the Author instance who has written the greatest number of articles
class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  # + `Author#add_article(magazine, title, content)`
#   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string),
#  this method creates a new Article instance and associates it with that author and that magazine.
  
  def add_article(author,magazine,title,content)
     newarticle = Article.new(self,magazine,title,content)
  end

end
