#+ `Author#name`
# + Returns the name of the author as a string
# + `Author.all`
#   + Returns an array of all Author instances
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count


class Author
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
  #   + Returns an array of all Author instances
    @@all
  end

  def self.most_verbose
  #   + Returns the Author instance who has the longest article by word count

  end

end
