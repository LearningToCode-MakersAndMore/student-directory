# putting students in array
students = [
  {name: 'Dr. Hannibal Lecter', cohort: :november, hobby: 'eating people'},
  {name: 'Darth Vader', cohort: :november, hobby: 'sewing'},
  {name: 'Nurse Ratched', cohort: :november, hobby: 'being angry'},
  {name: 'Michael Corleone', cohort: :november, hobby: 'having godchildren'},
  {name: 'Alex DeLarge', cohort: :november, hobby: 'horology'},
  {name: 'The Wicked Witch of the West', cohort: :november, hobby: 'scaring Alice'},
  {name: 'Terminator', cohort: :november, hobby: 'time travel'},
  {name: 'Freddy Krueger', cohort: :november, hobby: 'crime'},
  {name: 'The Joker', cohort: :november, hobby: 'playing with batman'},
  {name: 'Joffrey Baratheon', cohort: :november, hobby: 'nobody knows'},
  {name: 'Norman Bates', cohort: :november, hobby: 'interior design'},
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
  # code for swaping each to while loop
  # students = names
  # count = 0
  # while count < students.count
  #  puts "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
  #  count += 1
  # end
  names.each_with_index { |student, i| puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort) hobby is: #{student[:hobby]}" }
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
    students << {name: name, cohort: :november, hobby: 'painting'}
    puts "Now we have #{students.count} students"
    input_students(students)
  end
end

# calling input_students, print_header, print and print_footer
input_students(students)
print_header
print students
print_footer students
