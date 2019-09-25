require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

## MAGAZINES ##
cosmo = Magazine.new("Cosmopolitan Magazine", "Fashion")
top_gear = Magazine.new("Top Gear", "Auto")
fly_fishing_quarterly = Magazine.new("Fly Fishing Quarterly", "Sport")

## AUTHORS ##
janet = Author.new("Janet Findley")
howard = Author.new("Howard Bludgers")
buffy = Author.new("Buffy Summers")
jim = Author.new("Jim Jam")

## ARTICLES ##
# (author, magazine, title, content)
janet_top_gear = Article.new(janet, top_gear, "I Love the Honda CRV", "Wow, the Honda CRV rules!")
howard_fly_fishing_quarterly = Article.new(howard, fly_fishing_quarterly, "My Week in the Adirondacks", "I hate mosquitoes, and I caught no fish. 2 stars.")
buffy_cosmo = Article.new(buffy, cosmo, "Staking in Style", "Here are my top five picks for keeping it cute and cool while you're out slaying this summer :)")
jim_top_gear = Article.new(jim, top_gear, "LET'S GO FAST", "ZOOOOM VROOOOM RRRRRRKKKKKK VROOOOM VROOOOM")
janet_fly_fishing_quarterly = Article.new(janet, fly_fishing_quarterly, "You can fit lots of fishing gear in a Honda CRV", "I'm going to make a list of all the fishing gear I fit in my Honda CRV last weekend. 1: 7 poles. 2: 4 picnic baskets. 3: 2 blankest. 4: 5 pairs of waders. 6: 4 buckets for caught fish (empty). 7: 3 bottles of sunblock.")


puts "Magazine.all works?"
puts Magazine.all.length == 3

puts "Author.all works?"
puts Author.all.length == 4


puts "Article.all works?"
puts Article.all.length == 5

## git commit here

puts "Magazine.find_by_name works?"
puts Magazine.find_by_name("Top Gear") == top_gear

puts "author#articles (helper method) works?"
puts janet.articles.length == 2

puts "author#longest_article (helper method) works?"
puts janet.longest_article == janet_fly_fishing_quarterly

puts "Author.most_verbose works?"
puts Author.most_verbose == janet

## git commit here




### DO NOT REMOVE THIS
binding.pry

0
