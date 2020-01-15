# putting students in array
students = [
  'Dr. Hannibal Lecter',
  'Darth Vader',
  'Nurse Ratched',
  'Michael Corleone',
  'Alex DeLarge',
  'The Wicked Witch of the West',
  'Terminator',
  'Freddy Krueger',
  'The Joker',
  'Joffrey Baratheon',
  'Norman Bates',
]
# method for header
def print_header
  puts "The students of Villains Academy\n---------"
end
# method to print students
def print(names)
  names.each { |name| puts name}
end

# method to print number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# calling print_header, print and print_footer
print_header
print students
print_footer students
