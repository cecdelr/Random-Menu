#08/09/2017
#Random Menu Generator

#Initialize 3 arrays user will be filling in
#Adjective array
adjArray = []
#Cooking Style array
cookingStyleArray = []
#Food array
foodArray = []

#Get number of descriptors in each array
print "How many of each descriptors are you putting for the Random Menu Generator Word Bank? "
descriptorNum = gets.chomp.to_i
puts "Let's put #{descriptorNum} adjectives, cooking styles, and food for the word bank!\n"

#User fills in each descriptor array...
#...for adjective array...
puts ":::Adjectives:::"
descriptorNum.times do |i|
  print "\tEnter adjective ##{i + 1}: "
  adjArray[i] = gets.chomp.to_s
end

#...for cooking style array...
puts ":::Cooking Styles:::"
descriptorNum.times do |j|
  print "\tEnter cooking style ##{j+ 1}: "
  cookingStyleArray[j] = gets.chomp.to_s
end

#...and for food array
puts ":::Food:::"
descriptorNum.times do |k|
  print "\tEnter food ##{k + 1}: "
  foodArray[k] = gets.chomp.to_s
end

puts "\nMenu Generator Word Bank: Complete!"

#Prompt user how many items in the menu they want
print "\nHow many items would you like to see in the menu? "
menuItems = gets.chomp.to_i

#Check if user put in a valid number
#Valid = equal or less than the number of descriptors in each array
until menuItems <= descriptorNum
  puts "Uh-oh! We can only generate a maximum of #{descriptorNum} items."
  print "Please enter another number: "
  menuItems = gets.chomp.to_i
end

#Generate random object from each array, combine them, and print
# Format: adj + cooking style + food
#Create and print a list of ten numbered menu items
puts "\n===================================================="
puts "Okay, here is our randomly generated menu for today!"
puts "===================================================="

menuItems.times do |num|
  randAdj = adjArray.slice!(rand(adjArray.length))
  randCookingStyle = cookingStyleArray.slice!(rand(cookingStyleArray.length))
  randFood = foodArray.slice!(rand(foodArray.length))

  puts "#{num + 1}.) #{randAdj} #{randCookingStyle} #{randFood}"
end

#OPTIONAL:
# [X] - new solution where no word is repeated in the menu
#      (use slice/splice to remove from array!)
# [X] - allow user to determine how many items they'd like to see via user input
#      *must be equal/less than number of items in array
# [X] - allow user to input how many descriptors there are for each array
#      and ask them to fill in the adj, cooking style, food arrays
