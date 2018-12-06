require('sinatra')
require('sinatra/contrib/all')

require_relative('./controllers/house_controller.rb')
require_relative('./controllers/student_controller.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

# the contoller goes into the controllers folder, this allows them to redirect to the home page to ensure they can see the .erb files in the views folder
