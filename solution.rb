# Please copy/paste all three classes into this file to submit your solution!
class Article
    attr_reader :author, :magazine
    attr_accessor :title, :content
    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        @@all << self 
    end

    def self.all
        @@all 
    end 

end

class Author

    attr_reader :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end 
  
    
    def self.most_verbose 
      long_art = nil
      num = 0
      # return author inst with longest article by word count
      Article.all.each do |art|
        if art.content.split.count > num
          num = art.content.split.count
          long_art = art
        end
      end
      long_art.author
    end 
    
    def add_article(magazine, title, content)
      Article.new(self, magazine, title, content)
    end 
    
    def articles
      Article.all.select { |article| article.author == self }
    end 
  
    def magazines
      self.articles.map { |article| article.magazine }.uniq
    end 
  
    def show_specialties
      self.magazines.map { |mag| mag.category }.uniq
    end 
  
    def art_count
      self.articles.count
    end
  
    def self.most_active
      Author.all.max_by { |author| author.art_count }
    end 
  
end

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
  
    def self.find_by_name(name) 
      # given name, return first mag object
      Magazine.all.find { |mag| mag.name == name }
    end
  
    def articles
      Article.all.select { |art| art.magazine == self }
    end 
  
    def article_titles
      self.articles.map { |art| art.title }
    end 
  
    def contributors
      self.articles.map { |art| art.author }.uniq 
    end 
  
    def word_count
      # return # that is total # of words for all arts in mag
      self.articles.reduce(0) do |sum, art|
        sum + art.content.split.count
      end
    end 
  end
  