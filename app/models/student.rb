class Student < ActiveRecord::Base
    belongs_to :user
    belongs_to :lecturer
    belongs_to :cohort
    belongs_to :course
end
