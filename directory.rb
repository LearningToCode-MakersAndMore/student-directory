# define variable for number of students
student_count = 11
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
# and then printing them
[*0..(student_count - 1)].each { |n| puts students[n] }
# finally, we print the total number of students, student_count
print "Overall, we have #{student_count} great students"
