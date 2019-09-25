# A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.

class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
   @@all.push(self)
  end

  def self.all 
    @@all 
  end 

  def self.find_by_name(name_query)
    # Given a string of magazine's name, this method returns the first magazine object that matches
   @@all.find { |magazine| magazine.name == name_query }
  end 

  def my_articles
    Article.all.select { |article| article.magazine == self }
  end 

  def article_titles
   #Returns an array of the titles of all articles written for that magazine
   my_articles.map { |article| article.title }
  end 

  def contributors
    # Returns an array of Author instances who have written for this magazine
   my_articles.map { |article| article.author }
  end

  def word_count
    # Returns a number that is the total number of words for all of the articles in this magazine
   words_of_articles = my_articles.map { |article| article.content.split }
   word_count_of_articles = words_of_articles.map { |word_array| word_array.length }
   word_count_of_articles.reduce(:+)
  end 


end
