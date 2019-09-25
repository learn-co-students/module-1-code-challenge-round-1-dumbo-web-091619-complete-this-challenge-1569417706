class Magazine

  attr_accessor :name, :category

  @@all []

#  The name of the magazine and the category of 
#he name of the magazine and the category of 
#the magazine **can be** changed after being initialized.




  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def self.all
  @all
end
#Magazine.all`
# Returns an array of all Magazine instances


 #`Magazine#name`
   #Returns the name of this magazine
    def magazine_name
      magazine.all.select do |name|
       name == self
    end

  #+ `Magazine#category`
    # Returns the category of this magazine
    def category
      Magazine.all.select do |category|
      category == self
    end

#`Magazine.find_by_name(name)`
#Given a string of magazine's name, this method returns the first magazine object that matches

def find_by_name

  Magazine.all.select do |name|
    name == self
  end









end
