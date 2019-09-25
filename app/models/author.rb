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

  def Author.most_verbose
    Article.all.map do |article|
      article.content.size
    end.max 
  end 

 # def add_article
 # end
 
  def author_articles
    Article.all.select do |article|
      article.author == self 
    end.uniq
  end 

  def author_magazines
    Magazine.all.select do |mag|
      mag
    end.uniq 
end 

  #def show_specialties

  #end 
  



end
