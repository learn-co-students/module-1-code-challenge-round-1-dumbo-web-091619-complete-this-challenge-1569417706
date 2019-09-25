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