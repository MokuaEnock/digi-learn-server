# <<<<<<< HEAD
# class Cohort < ActiveRecord::Base
# end
# =======
# # Write the Cohort class below
# class Cohort
# end
# >>>>>>> 35e3c9b (Add a class to cohort model)
class Cohort < ActiveRecord::Base
    has_many :students
    has_many :lecturers, through: :students
end