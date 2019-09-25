require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

eli = Author.new("Eli")
mo = Author.new("Mo")
mike = Author.new("Mike")
abe = Author.new("Abe")

espn = Magazine.new("ESPN", "Sports")
gq = Magazine.new("GQ", "Fashion")
sci = Magazine.new("Science News", "Science")
art = Magazine.new("Glasgow Arts", "Art")

eli_art = Article.new(eli, art, "Edinburgh Sucks", "Edinburgh really sucks someone come and save me.")
eli_art2 = Article.new(eli, art, "Edinburgh Rules", "Edinburgh really rules.")
eli_art3 = Article.new(eli, art, "Londons", "London is really dope tho.")
mo_espn = Article.new(mo, espn, "Daniel Jones", "Daniel Jones is the best QB to ever play in NY.")
mo_espn2 = Article.new(mo, espn, "KD", "Kevin Durant is not a snake, confirmed by sources.")
mike_sci = Article.new(mike, sci, "Science Happened", "Some science stuff happned, not sure how to feel.")
mike_espn = Article.new(mike, espn, "Sports happened", "Some sports stuff happened, i feel indifferent.")
abe_sci = Article.new(abe, sci, "Math", "You can infinitely find the integrals of integrals apparently.")
abe_espn = Article.new(abe, espn, "Darnold", "Sam Darnold is the best Qb to ever play in NY.")
abe_espn2 = Article.new(abe, espn, "Kevin Garnett", "Kevin Garnett is a top 10 player all time.")
eli_gq = Article.new(eli, gq, "Fall 2019", "Fashion happened in Fall of 2019. Blah blah blah blah blah blah some stuff let's keep going testing testing one two three.")
# mike_sports = Article.new(mike, espn, "Test", "this is a test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")



### DO NOT REMOVE THIS
binding.pry

0
