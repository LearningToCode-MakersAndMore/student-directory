# putting students in array
students = [
  ['Dr. Hannibal Lecter', :november],
  ['Darth Vader', :november],
  ['Nurse Ratched', :november],
  ['Michael Corleone', :november],
  ['Alex DeLarge', :november],
  ['The Wicked Witch of the West', :november],
  ['Terminator', :november],
  ['Freddy Krueger', :november],
  ['The Joker', :november],
  ['Joffrey Baratheon', :november],
  ['Norman Bates', :november],
]
# method for header
def print_header
  puts "The students of Villains Academy\n---------"
end
# method to print students
def print(names)
  names.each { |name| puts "#{name[0]} #{name[1]} cohort" }
end

# method to print number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# calling print_header, print and print_footer
print_header
print students
print_footer students
