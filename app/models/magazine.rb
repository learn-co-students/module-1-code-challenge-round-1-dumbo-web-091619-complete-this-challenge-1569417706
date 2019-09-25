class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def find_by_name(name)
    name.select { |f_name| f_name.name == self}
  end

  def article_titles
    Article.all.map {|article| article.title == self}
  end

  def contributors
    Article.all.map {|author| author.name}
  end

  def word_count
   word_count = Article.split('').count
   return word_count
  end

 def self.all
   @@all
 end

end
