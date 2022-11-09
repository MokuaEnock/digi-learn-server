puts "🌱 Seeding spices..."

puts "Destroying current data ..."
Cohort.destroy_all
Course.destroy_all
Lecturer.destroy_all
Student.destroy_all
User.destroy_all

puts "Seeding Users ..."
user1 =
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

user2 =
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

user3 =
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

user4 =
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

user5 =
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

puts "seeding cohort ..."

cohort1 = Cohort.create(name: "cohort one")
cohort2 = Cohort.create(name: "cohort two")

puts "seeding courses ...."
course1 =
  Course.create(
    name: Faker::Lorem.word,
    duration: Faker::Number.between(from: 1, to: 12),
    description: Faker::Lorem.sentence
  )

course2 =
  Course.create(
    name: Faker::Lorem.word,
    duration: Faker::Number.between(from: 1, to: 12),
    description: Faker::Lorem.sentence
  )

puts "seeding lecturers ..."

lecturer1 =
  Lecturer.create(
    user_id: user1.id,
    course_id: course1.id
    #cohort_id: cohort1.id
  )

lecturer2 =
  Lecturer.create(
    user_id: user2.id,
    course_id: course2.id
    #cohort_id: cohort1.id
  )

puts "seeding students ..."

student1 =
  Student.create(
    user_id: user1.id,
    #course_id: course1.id,
    lecturer_id: lecturer1.id,
    cohort_id: cohort1.id,
    grade: 78
  )

student1 =
  Student.create(
    user_id: user1.id,
    #course_id: course1.id,
    lecturer_id: lecturer1.id,
    cohort_id: cohort2.id,
    grade: 78
  )

student1 =
  Student.create(
    user_id: user1.id,
    #course_id: course1.id,
    lecturer_id: lecturer2.id,
    cohort_id: cohort2.id,
    grade: 78
  )
puts "✅ Done seeding!"
