=begin
comment origonal code so i can implement user imput method
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
=end

# define students array
students = []

# define user input method
def input_students(students)
  puts 'Please enter the names of the students'
  name = gets.chomp
  if name != ''
    students << name
    input_students(students)
  else
    print(students)
  end
end

# define print method
def print(students)
  students.each { |student| puts "#{student}" }
end

input_students(students)
