# + `Magazine#name`
#   + Returns the name of this magazine
# + `Magazine#category`
#   + Returns the category of this magazine
# + `Magazine.all`
#   + Returns an array of all Magazine instances
# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
  #   + Returns an array of all Magazine instances
    @@all
  end

  def self.find_by_name(name)
  #   + Given a string of magazine's name, this method returns the first magazine object that matches

  end

end
