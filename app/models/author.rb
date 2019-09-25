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

  def name
    @name
  end

  def article
    Article.all.select do |arti|
      arti.author == self
    end
  end

  def magazine
    article().map do |mag|
      mag.magazine
    end
  end

  def self.most_verbose
    article().max_by do |longest_word_count|
      longest_word_count.content
    end
  end

  def add_article(title, content, magazine)
    Article.new(title, content, self, magazine)
  end

  def articles
    article().select do |article_by_author|
      article_by_author.author
    end
  end

  def magazines
    magazine().map do |mag_instance|
      mag_instance.name
    end
  end

  def show_specialties
    magazine().map do |mag_instance|
      mag_instance.category
    end
  end

end


# + `Author.most_active`
#   + Returns the Author instance who has written the greatest number of articles
