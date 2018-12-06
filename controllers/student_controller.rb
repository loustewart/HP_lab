require_relative('../models/student.rb')

get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

# this goes into the students folder and grab the index.erb
# the path id inside a string so as not to try to divide students by index!!

get '/students/new' do
  @students = Student.all()
  erb(:"students/new")
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  redirect('/students')
end
