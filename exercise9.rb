#exercise9.1
# Start out by creating the following hash representing the number of students
#in past Bitmaker cohorts: tudents = {
#   :cohort1 => 34,
#   :cohort2 => 42,
#   :cohort3 => 22
# }

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
 }

 #exercise9.2
 # Create a method that displays the name and number of students for each cohort,
 # like so:
 #cohort1: 34 students
 #cohort2: 42 students
 #cohort: 22 students

 def display(students)
   students.each {|cohort, number_of_students| puts "#{cohort}: #{number_of_students} students"}
 end

display(students)

#exercise9.3
# Add cohort 4, which had 43 students, to the hash.
students [:cohort4] = 43

#exercise9.4
# Use the keys method to output all of the cohort names.
p all_cohort_names= students.keys

#exercise9.5
# The classrooms have been expanded!
# Increase each cohort size by 5% and display the new results.
students.each { |cohort, number_of_students| puts "#{cohort}: #{(number_of_students*1.05).floor} students"}


#exercise9.6
# Delete the 2nd cohort and redisplay the hash.
students.delete(:cohort2)
p students

#exercise9.7
# BONUS: Calculate the total number of students across all cohorts using each
# and a variable to keep track of the total. Output the result.
total= 0
students.each do |cohort, number_of_students|
  total = number_of_students + total
end
p total

#exercise9.8
# BONUS: Create another similar hash called staff and display it using the
#display method from above.
staff = {
  :staff1 => 11,
  :staff2 => 33,
  :staff3 => 45
}
def display(staff)
  staff.each {|staff_name, staff_number| puts "#{staff_name}: #{staff_number} staff"}
end

display(staff)
