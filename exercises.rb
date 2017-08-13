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
list_of_movies= {1999 => [The Matrix, Star Wars=> Episode 1, The Mummy]},
   {2009 => [Avatar, Star Trek, District 9]}, {2019 => [How to Train Your
    Dragon 3, Toy Story 4, Star Wars => Episode 9]}
    p list_of_movies

#exercise 6.1 Output the message "I will not skateboard in the halls" 20 times.
# 30.times do print "I will not skateboard in the halls" end

# exercise 6.2 Create an array consisting of the above message. It should appear
# in the array 20 times.
message= ["I will not skateboard in the halls"]
new_message = message * 20
print "#{new_message}"

# exercise 6.3 Create an array consisting of the numbers between 1 and 50.
