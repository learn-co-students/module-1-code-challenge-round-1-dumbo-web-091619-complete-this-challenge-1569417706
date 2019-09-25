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

  def Magazine.names
    self.all.map do |mag|
      mag.name 
    end 
  end 

  def Magazine.find_by_name(name)
    #time crunch 
    #attempting to use helper method to find the magazine name by self
    Magazine.names.all.find do |magazine|
      magazine == self.name  
  end 
end 

end
