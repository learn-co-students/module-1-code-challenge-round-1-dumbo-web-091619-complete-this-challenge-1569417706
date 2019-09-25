require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


oda = Author.new("Oda Echiro")
stan_lee = Author.new("Stan Lee")
chris_bro = Author.new("Chris Broussard")
herbert = Author.new("Herbert The Pervert")
mk = Author.new("Masashi Kishimoto")

shonen_jump = Magazine.new("Shonen Jump", "comics")
marvel = Magazine.new("Marvel Comics", "comics")
espn = Magazine.new("ESPN", "sports")
playboy = Magazine.new("Play Boy", "lifestyle")

article1 = Article.new("One Piece 201", "Luffy will be the Pirate King!", oda, shonen_jump)
article2 = Article.new("The Uncanny XMen", "Magneto, we must work with the humans!", stan_lee, marvel)
article3 = Article.new("Lebron vs MJ", "Lebron is the greatest basktball player of all time!", chris_bro, espn)
article4 = Article.new("T&A", "Are you a boobs or an ass man?", herbert, playboy)
article5 = Article.new("Naruto", "I'm gonna become the Hokage!", mk, shonen_jump)
article6 = Article.new("Fantastic 4", "Doctor Doom is an asshole!", stan_lee, marvel)
article7 = Article.new("One Piece 900", "Luffy is the 5th YONKO!", oda, shonen_jump)






### DO NOT REMOVE THIS
binding.pry

0
