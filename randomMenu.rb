#3 arrays
  #Adjective array
  adjArray = [
    "hot", "tart", "lemon-flavored", "burnt", "breaded",
    "sour", "iced", "spicy", "basil-infused", "deconstructed"
  ]
  #Cooking Style array
  cookingStyleArray = [
    "seared", "fried", "baked", "tossed", "sauteed",
    "grilled", "sun-dried", "garnished", "veggie", "stacked"
  ]

  #Food array
  foodArray = [
    "fish", "linguine", "yogurt", "steak", "noodles",
    "creme brulee", "pizza", "tacos", "barbecue", "pancakes"
  ]

#Generate random object from each array and combine in format:
# adj + cooking style + food
#Create and print a list of ten numbered menu items
puts "=========================="
puts "Here is our menu for today"
puts "=========================="

10.times do |num|
  randAdj = adjArray[rand(10)] #rand() is exclusive
  randCookingStyle = cookingStyleArray[rand(10)]
  randFood =  foodArray[rand(10)]
  puts "#{num + 1}.) #{randAdj} #{randCookingStyle} #{randFood}"
end

#OPTIONAL:
# [] - new solution where no word is repeated in the menu
#      (use slice/splice to remove from array!)
# [] - allow user to determine how many items they'd like to see via user input
#      *must be equal/less than number of items in array
# [] - allow user to input how many descriptors there are
#      and ask them to fill in the adj, cooking style, food etc.
