numbers = (1..100).to_a
numbers.each do |number|
  if number %3 == 0
    #is multiple of three
    puts "Bit"
  elsif number %5 == 0
    #is multiple of five
    puts "Marker"
  elsif number %3 == 0 && number %5 == 0
    #is multiple of five and three
    puts "BitMaker"
  else
    puts number
end
end
