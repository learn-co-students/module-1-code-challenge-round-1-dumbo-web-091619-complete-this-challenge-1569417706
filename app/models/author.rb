# An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

# + `Author#name`
#   + Returns the name of the author as a string
# + `Author.all`
#   + Returns an array of all Author instances
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count

# + `Author#add_article(magazine, title, content)`
#   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
# + `Author#articles`
#   + Returns an array of Article instances the author has written
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
    @@all.push(self)
  end

  def self.all 
    @@all 
  end 

  def add_article(magazine, title, content)
   Article.new(self, magazine, title, content)
  end 

  def articles
   Article.all.select { |article| article.author == self }
  end 

  def magazines
   articles.map { |article| article.magazine }.uniq 
  end 

  def show_specialties
    magazines.map { |magazine| magazine.category }.uniq
  end 

  def self.most_verbose
   longest_article = Article.all.max_by { |article| article.content.length }
   longest_article.author
  end 

  def self.most_active
    # Returns the Author instance who has written the greatest number of articles
    @@all.max_by { |author| author.articles.length }
  end 


end
