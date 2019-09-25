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
    Article.all().select do |article|
      article.author == self
    end 
  end 

  def self.most_verbose
    #
    #+ Returns the Author instance who has the longest article by word count
    self.articles().map do |article|
      article.content 
    end 
  end 

  def add_article(title, content, magazine)
    Article.new(title, content, self, magazine)
  end 

  def magazines
    unique_mags = self.articles.map do |article|
      article.magazine 
    end 
    unique_mags.uniq 
  end 

  def show_specialties
    unique_category = self.magazines().map do |magazine|
      magazine.category 
    end 
    unique_category.uniq 
  end 

  def self.most_active
  #   `Author.most_active`
  # + Returns the Author instance who has written the greatest number of articles
  self.all()max_by do |author|
    author.
  end 

end
