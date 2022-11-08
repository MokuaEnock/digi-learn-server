class Lecturer < ActiveRecord::Base
    has_many :students
    belongs_to :cohort
    belongs_to :course
    belongs_to :user
end
