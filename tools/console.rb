require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


m1=Magazine.new("TIMES", "News")
m2=Magazine.new("VOGUE", "Fashion")

a1=Author.new("Emirhan Kaplan")
a2=Author.new("Rob Meija")
a3=Author.new("Jacky Feng")

art1=Article.new(a1, m1, "Middle-East", "ahsbdfa afh ahlfb  afhbasklfbh  asfhbk alksfhb  afb alkfshb h akfb alksfb akbsf  alhfb akbf")
art2=Article.new(a2, m2, "New Clothes", "bla bla bla")
art3=Article.new(a3, m1, "Asia", "bla bla")


a1.add_article(m2, "Designer Shoes", "djfna ajnf af jna fnj")








### DO NOT REMOVE THIS
binding.pry

0
