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
    password: Faker::Internet.password(8),
    type: "Student"
  )

puts "✅ Done seeding!"
