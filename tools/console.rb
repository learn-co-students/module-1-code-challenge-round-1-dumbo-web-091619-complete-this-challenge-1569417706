require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

name1 = Author.new("Kaido")
name2 = Author.new("Big Mom")
name3 = Author.new("Shanks")

mag1 = Magazine.new("mag1name", "mag1 category")
mag2 = Magazine.new("mag2name", "mag2 category")
mag3 = Magazine.new("Mag3name", "mag3 category")

art1 = Article.new("art1", "att1 content", name1, mag1)
art2 = Article.new("art2", "att2 content", name2, mag2)
art3 = Article.new("art3", "att3 content", name3, mag3)







### DO NOT REMOVE THIS
binding.pry

0
