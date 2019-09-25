class Author
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

 def add_article(magazine, title, content)
  Article.new(self, magazine, title, content) 
 end

 def articles
  Article.all.select { |article| article.author == self}
 end

 def magazines
   articles.map { |article| article.magazine }
 end

 def show_specialties
   
 end

 def most_active
   @@all.count
 end

  def self.all
    @@all
  end

end
