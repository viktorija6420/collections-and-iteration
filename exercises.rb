fav_colors = ["orange", "green", "yellow"]
age = [27, 33, 25, 44]
coin_flip = ["heads", "heads", "heads", "tails", "tails"]
favourite_artists = ["Claire Danes", "Kevin Spacey", "Casey Affleck"]
fav_colors1 = [:orange, :green, :yellow]

words_and_meaning = { :bright => "shining", :matrix => "fine_material", :hyperbole => "exaggeration" }
fav_movie_and_year = { :Forrest_Gump => 1994, :Moonlight => 2016, :The_Martian => 2015 }
cities_and_population = { :Montreal => 1649519, :Skopje => 1000000, :Mexico_City => 8918653 }
names = { :Anna => 27, :Maria => 25, :Brian => 33, :Martin => 44}

print coin_flip
print fav_colors[0]
print age.sort

age << 0
print fav_movie_and_year[:Forrest_Gump]

print fav_colors1[-1]
cities_and_population [:Paris] = 2244000

print coin_flip.reverse!
print cities_and_population[:Montreal]

print "I think #{favourite_artists.sample} is great."

print favourite_artists[0..1]

hash_value = fav_movie_and_year.keys.sample
hash_key = fav_movie_and_year.values.sample
fav_movie_and_year.each do |hash_key,hash_value|
  puts "#{hash_key} came out in #{hash_value}."
end

print age.sort!.reverse!

#exercise 3, question 4
#Add "Beauty and the Beast" movie to your hash of movies information,
# but with a twist: the movie was released both in 1991 and in 2017.
#Print it out.
fav_movie_and_year[:Beauty_and_the_Beast] = [1991, 2017]
print fav_movie_and_year

#Print out all of the ages of your friends/family that
#are less than 30 (or any number where some ages will not be printed!).
age.each do |number_age|
  if number_age < 30
    puts "#{number_age}"
  end
end

# Find and output the age of the oldest person
# in your friends/family array.
p age.max

# Count how many times you flipped 'heads' using the coin flips array.

  total= 0
coin_flip.each do |current_coin|
  if current_coin == "heads"
    total = total + 1
  end
end
puts "#{total}"

# You realize one of the performing artists in your
# list is no longer a favourite. Remove one of them from the array.
favourite_artists.delete_at(2)

# Pick a city in your city population hash and change its population.
cities_and_population[:Montreal] = 333333
print cities_and_population

# Find the sum total of the population in the hash of cities

sum=0
cities_and_population.values.each do |current_number|
  sum = current_number + sum
end
cities_and_population.values.sum
puts sum

# Using your hash containing the names of your family and friends with their
#ages, print out one of two messages for each depending on their age.
#For example:
# Martha is old.
# Stewart is young.
# # Holly is young.
names.each do |name, age|
 if age <= 40
  puts "#{name} is young."
 else
  puts "#{name} is old."
  end
end

# Print out the last two colours in your array of favourite colours.
print "#{fav_colors[1..-1]}"

# Increase by 1 the age of everyone in your array of ages. Print it out.
age = [27, 33, 25, 44]

age.each {|number| print "#{number + 1}"}

# Add two new colours to your array of favourite colours.
p fav_colors.insert(2, "blue", "purple")

#exercise6.1 Composing Arrays and Hashes
# Make a new hash that contains a list of movies for each year. Each list
# of movies should be an array. Below is some data you can use.
# 1999: The Matrix, Star Wars: Episode 1, The Mummy
# 2009: Avatar, Star Trek, District 9
# 2019: How to Train Your Dragon 3, Toy Story 4, Star Wars: Episode 9
list_of_movies = {
:"1999" =>["The Matrix", "Star Wars\: Episode 1", "The Mummy"],
:"2009" =>["Avatar", "Star Trek", "District 9"],
:"2019" =>["How to Train Your Dragon 3", "Toy Story 4", "Star Wars\: Episode 9"]
}
p list_of_movies

# exercise6.2 Make a new array that contains each row of the buttons on a phone.
 # Each row should be an array.
# The rows on a phone are: 1 2 3, 4 5 6, 7 8 9, * 0 #
phone=[
  [1,2,3], [4,5,6], [7,8,9], ["*",0,"#"]
]
p phone

#Exercise6.3 Make a new array that contains information about three countries.
 # Each country should be a hash that has a name, a continent, and whether
  # or not it is an island.
  three_countries=[
    { name:"Macedonia",
     continent:"Europe",
     island:false
    },
    { name:"Madagascar",
     continent:"Africa",
     island: true
    },
     { name:"Indonesia",
     continent:"Asia",
     island: true
    }
   ]
p three_countries

#exercise 6.1 Output the message "I will not skateboard in the halls" 20 times.
20.times do print "I will not skateboard in the halls." end

# exercise 6.2 Create an array consisting of the above message. It should appear
# in the array 20 times.
message= ["I will not skateboard in the halls."]
new_message = message * 20
print "#{new_message}"

# exercise 6.3 Create an array consisting of the numbers between 1 and 50.
numbers_between_numbers = (1..50).to_a
p numbers_between_numbers

# Exercise 6.4 Use an each loop to find the sum of the numbers in the above array.
sum = 0
numbers_between_numbers.each do |current_number|
  sum = current_number + sum
end
p sum

# Exercise 6.5 Create a new array which has three of each number up to 50.
# Ie. [1, 1, 1, 2, 2, 2, 3, 3, 3, ... , 50, 50, 50] and so on, up to 50.
three_numbered_numbers = []
# (1..50).to_a
#make an empty array
#put the numbers 1 to 50 in the array by looping
# add 3 of the current_number as you loop
numbers_between_numbers.each do |current_number|
  3.times do
    three_numbered_numbers.push(current_number)
  end
end
puts "#{three_numbered_numbers}"

#Exercise6.6 Make a new array out all of the countries from the hash in Exercise 6
#that are not islands. Print out both arrays.
not_islands = three_countries.select { |country| country[:island]==false}.to_a
p not_islands
p three_countries

#exercise7.1
#You want to add up your expenses for the year.
# Create an array of numbers (integers or floats) that represents your expenses,
 # eg:
# [250, 7.95, 30.95, 16.50]
#
# Add up the numbers and output the result.
#
# Tip: you may need a variable to keep track of the sum total.
#  What value should it start at?
#
# Put this code into a method. The method should take an array
# as an argument and return the sum of the expenses
# in the array. Call the method twice with different arrays.

expences = [120, 3.50, 55, 409.40]
puts expences.reduce(:+)
def sum(arr)
  arr.reduce(:+)
end
puts sum
puts sum

#exercise8
#make a shopping list array
grocery_list = ["bananas", "strawberries", "peanut butter", "bread" ]
#exercise 8.1
# Your next step should present your grocery list with an item on each line,
# with an asterisk (*) in front of it
grocery_list.each { |item| puts "* #{item}"}
#8.1.1
grocery_list << "rice"
grocery_list.each {|item| puts "* #{item}"}
#8.2
# You lost count of how many things you need to pick up.
#Better output the total number of items on your list.
p grocery_list.count
#8.3
# Check to see if your list includes "bananas". If it does, output "You need
#to pick up bananas". Otherwise, output "You don't need to pick up bananas today".
if grocery_list.include?("bananas")
puts "You don't need to pick up bananas."
elsif
  puts "You need to pick up  bananas."
end

#8.4
# Display the second item in the list.
#(Don't forget that arrays indices start at zero!
print grocery_list[1]

#8.5
# It turns out that everything in this grocery store you're visiting is
# stored alphabetically, so to better plan out what you
# need to buy you should sort your grocery list and output it with
#asterisks again.
grocery_list.sort.each {|item| puts "* #{item}"}

#8.6
# After looking everywhere, you can't find the salmon.
#Delete it from your list and redisplay the list one last time.
grocery_list.delete("bananas"){|item| puts "* #{item}"}
