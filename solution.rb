# Please copy/paste all three classes into this file to submit your solution!

require 'pry'

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
     # Returns the Author instance who has the longest article by word count
     longest_article = Article.all.max_by { |article| article.content.length }
     longest_article.author
    end 
  
    def self.most_active
        # Returns the Author instance who has written the greatest number of articles
        @@all.max_by { |author| author.articles.length }
    end 
  
  
  end

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
     # could make this .uniq though it was not asked for
    end
  
    def word_count
      # Returns a number that is the total number of words for all of the articles in this magazine
     words_of_articles = my_articles.map { |article| article.content.split }
     word_count_of_articles = words_of_articles.map { |word_array| word_array.length }
     word_count_of_articles.reduce(:+)
    end 
  
  
  end

class Article

    attr_reader :author, :magazine, :title, :content

    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title 
        @content = content
        @@all.push(self)
    end

    def self.all 
        @@all 
    end 

end

jared = Author.new("Jared")
jess = Author.new("Jess")
paul = Author.new("Paul")
erica = Author.new("Erica")

time = Magazine.new("Time", "News")
people = Magazine.new("People", "Gossip")
e = Magazine.new("E", "Gossip")
espn = Magazine.new("ESPN", "Sports")

article1 = Article.new(paul, people, "Kim K at it again", "Kim K is so funny")
artcile2 = Article.new(paul, e, "Kim K at it again", "Wow look Kim K is so funny")
artcile3 = Article.new(jess, espn, "Lebron James", "Lebron Janes did a thing")
artcile4 = Article.new(erica, time, "Africa", "Many animals to see")
artcile5 = Article.new(erica, time, "Canada", "Healthcare")
artcile6 = Article.new(jess, espn, "Soccer", "What's the deal with soccer eh?")
artcile7 = Article.new(jared, espn, "Real Madrid", "This team SUCKS")
artcile8 = Article.new(jared, espn, "Lebron James is GOAT", "Legit my fav player")
artcile9 = Article.new(paul, espn, "Kanye West", "I am writing about Kanye in a sports magazine how weird is that?")
artcile10 = Article.new(erica, time, "Mexico", "Wonderful place")
artcile11 = Article.new(paul, e, "Kanye West", "I just wrote an article about this guy in ESPN lmao")

binding.pry 
0
