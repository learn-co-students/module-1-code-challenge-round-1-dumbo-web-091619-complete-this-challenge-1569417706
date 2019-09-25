require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Author.new("fred", "Power")
a2 = Author.new("ben", "Freedom")
a3 = Author.new("ab", "The cost")

ar1 = Article.new(a1, "New Yorker", "Power", "power conceeds nothing without demand" )
ar2 = Article.new(a2, "Nasa", "Freedom", "freedom is not free")
ar3 = Article.new(a3, "GQ", "The cost", "the cost of freedom")

mag1 = Magazine.new("New Yorker", "current events")
mag2 = Magazine.new("GQ", "fashion")
mag3 = Magazine.new("Nasa", "science")








### DO NOT REMOVE THIS
binding.pry

0
