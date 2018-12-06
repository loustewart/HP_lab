require_relative('../models/house.rb')
require_relative('../models/student.rb')

require('pry')

Student.delete_all()
House.delete_all()

gryffindor = House.new({
  'name' => 'gryffindor',
  'url' => "/images/gryffindor_logo.jpg"
  })

gryffindor.save()

slytherin = House.new({
  'name' => 'Slytherin',
  'url' => "/images/slytherin_logo.jpg"
  })

slytherin.save()

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => "/images/ravenclaw_logo.jpg"
  })

ravenclaw.save()


hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => "/images/hufflepuff-logo.jpg"
  })

hufflepuff.save()


student1 = Student.new({
  'first_name' => 'Barry',
  'last_name' => 'Potter',
  'house' => "#{gryffindor.id}",
  'age' => 12
  })

  student1.save()

student2 = Student.new({
  'first_name' => 'Ron',
  'last_name' => 'Weasley',
  'house' => "#{gryffindor.id}",
  'age' => 11
  })

student2.save()

student3 = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'house' => "#{slytherin.id}",
  'age' => 12
  })

student3.save()

binding.pry

nil
