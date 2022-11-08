class Course < ActiveRecord::Base
    has_many :students
    has_many :lecturers, through: :students
end
