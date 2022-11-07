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

puts "seeding cohort ..."
cohort1 = Cohort.create(name: "cohort one")

puts "seeding courses ...."
course1 =
  Course.create(
    name: Faker::Lorem.word,
    duration: Faker::Number.between(from: 1, to: 12),
    description: Faker::Lorem.sentence
  )

puts "seeding lecturers ..."
lecturer1 =
  Lecturer.create(
    user_id: user1.id,
    course_id: course1.id,
    cohort_id: cohort1.id
  )

puts "✅ Done seeding!"
