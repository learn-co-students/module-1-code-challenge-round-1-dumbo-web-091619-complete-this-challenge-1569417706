require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

fashion = Magazine.new("Fashionista", "Fashion" )
game = Magazine.new("Game Informer", "Gaming")
people = Magazine.new("People", "Tabloid")

ann = Author.new("Ann Anderson")
tom = Author.new("Tom Thompson")
dave = Author.new("Dave Davidson")
kate = Author.new("Kate Kattson")

game_art1 = Article.new("Future of Gaming", dave, game, "What is the future of gaming? Read on to find out")
game_art2 = Article.new("Top Gaming Trends", tom, game, "List of the top ten trends in gaming")
game_art3 = Article.new("New Game", ann, game, "New game coming out.")
game_art4 = Article.new("More Games", tom, game, "Even more games!")

people_art1 = Article.new("Celeb Babies", kate, people, "Cute famous babies")
people_art2 = Article.new("Gossip", tom, people, "blah blah blah tabloid gossip")

fashion_art1 = Article.new("New Fashions", kate, fashion, "New fashion. Very expensive")





### DO NOT REMOVE THIS
binding.pry

0
