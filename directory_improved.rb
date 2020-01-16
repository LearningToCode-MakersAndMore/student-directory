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
  # bellow is commited code for only printing names beining with t
  # names.each_with_index { |student, i| puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0].downcase == 't' }
  # bellow is commited code for printing names < 12 characters including spaces
  # names.each_with_index { |student, i| puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12 }
  students = names
  count = 0
  while count < students.count
    puts "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
    count += 1
  end
end

# method to print number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# method to input students
def input_students(students)
  puts "Please enter the names of the students you would like to add\nTo finish, just hit return twice"
  name = gets.chomp
  if !name.empty?
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    input_students(students)
  end
end

# calling input_students, print_header, print and print_footer
input_students(students)
print_header
print students
print_footer students
