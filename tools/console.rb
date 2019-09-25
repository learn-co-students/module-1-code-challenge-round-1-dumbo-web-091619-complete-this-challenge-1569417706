require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


a1 = Author.new("Andrew")
a2 = Author.new("Jamie")
a3 = Author.new("Bryant")
a4 = Author.new("Chris")
a5 = Author.new("Miles")

mag1 = Magazine.new("GQ", "Lifestyle")
mag2 = Magazine.new("Wired", "Tech")


art1 = Article.new(a1, mag1, "7 habits", "Self Help is helpful." )
art2 = Article.new(a2, mag2, "Mastery", "I want to Master this." )
art3 = Article.new(a3, mag1, "48 Laws", "Don't outshine your superiors.")
art4 = Article.new(a4, mag2, "You Don't Know JS", "That's what Bob Martin told me to read" )











### DO NOT REMOVE THIS
binding.pry

0
