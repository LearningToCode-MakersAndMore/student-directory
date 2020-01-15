# putting students in array
students = [
  {name: 'Dr. Hannibal Lecter', cohort: :november},
  {name: 'Darth Vader', cohort: :november},
  {name: 'Nurse Ratched', cohort: :november},
  {name: 'Michael Corleone', cohort: :november},
  {name: 'Alex DeLarge', cohort: :november},
  {name: 'The Wicked Witch of the West', cohort: :november},
  {name: 'Terminator', cohort: :november},
  {name: 'Freddy Krueger', cohort: :november},
  {name: 'The Joker', cohort: :november},
  {name: 'Joffrey Baratheon', cohort: :november},
  {name: 'Norman Bates', cohort: :november},
]
# method for header
def print_header
  puts "The students of Villains Academy\n---------"
end
# method to print students
def print(names)
  names.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

# method to print number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# calling print_header, print and print_footer
print_header
print students
print_footer students
