require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("jack")
author2 = Author.new("lily")
author3 = Author.new("jane")
author4 = Author.new("henry")
author5 = Author.new("will")


mag1 = Magazine.new("mag1", "fashion")
mag2 = Magazine.new("mag2", "science")
mag3 = Magazine.new("mag3", "news")
mag4 = Magazine.new("mag4", "astro")
mag5 = Magazine.new("mag5", "robots")

art1 = Article.new(author1, mag5, "title1", "content1")
art2 = Article.new(author5, mag2, "title2", "content2")
art3 = Article.new(author4, mag5, "title3", "content3")
art4 = Article.new(author2, mag1, "title4", "content4")
art5 = Article.new(author3, mag3, "title5", "content5")





### DO NOT REMOVE THIS
binding.pry

0
