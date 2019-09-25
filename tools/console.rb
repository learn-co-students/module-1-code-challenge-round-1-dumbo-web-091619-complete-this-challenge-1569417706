require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("foodie", "cooking", "food network", "Rick")
author2 = Author.new("foodaholic", "food addiction", "food network", "James")

magazine1 = Magazine.new("food", "Food addict")
magazine2 = Magazine.new("drink", "alcoholic")


article1 = Article.new(author1, magazine1, "Food Wars", "food")
article2 = Article.new(author2, magazine2, "Drink Wars", "drink")






### DO NOT REMOVE THIS
binding.pry

0
