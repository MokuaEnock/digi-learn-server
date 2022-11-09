class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # get all users
  get "/users" do
    users = User.all
    users.to_json
  end


  # get one user
  get "/user/:id" do
   User.find(params[:id]).to_json
  end


  # get all students
  get "/students" do
    students = Student.all
    students.to_json
  end

  # get one student
  get "/student/:id" do
   Student.find(params[:id]).to_json
  end
  
  # get all lecturers
  get "/lecturers" do
    lecturers = Lecturer.all
    lecturers.to_json
  end

# get one lecturer
  get "/lecturer/:id" do
   Lecturer.find(params[:id]).to_json
  end

  # get all cohorts
  get "/cohorts"  do
   cohorts = Cohort.all
   cohorts.to_json
 end

#  get one cohort
get "/cohort:id" do
  Cohort.find(params[:id]).to_json
end

# get all courses
get "/courses" do
  courses = Course.all
  courses.to_json
end

# get one course
get "/course/:id" do
  Course.find(params[:id]).to_json
end

# create a  specifics student grade
post "/student/:id" do 
 student = Student.create(
 grade: params[:grade]
  )
student.to_json
end

# create a User
post "/user" do
  user = User.create(
    name: params[:name],
    email: params[:email],
    password: params[:password]
)
user.to_json
end


# create a lecturer
# post "/lecturer" do
#   lecturer = Lecturer.create(
#     user_id: params[:user_id],
#     course_id: parans[:course_id],
#     cohort_id: params[:cohort_id]
#   )
#   lecturer.to_json
# end

# update a student
patch "/student/:id" do
  student = Student.find(params[:id])
  student.update(
      grade: params[:grade] 
       )
       {message: "Student details updated!"}.to_json
end

# delete student details
delete "/student/:id" do
  student = Student.find(params[:id])
  student.delete(

  )
end

end
