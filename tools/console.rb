require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

author1 = Author.new("Oleg")
author2 = Author.new("MIchael")


mag1 = Magazine.new("New York Times", "News")
mag2 = Magazine.new("Dayli", "News")
mag3 = Magazine.new("Cook book", "Cooking")

article1 = Article.new("title1", author1, mag1, "I'm content1")
article2 = Article.new("title2", author1, mag2, "I'm content2")
article3 = Article.new("title3", author2, mag2, "I'm content3")
article4 = Article.new("title4", author1, mag3, "I'm content4")

###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
