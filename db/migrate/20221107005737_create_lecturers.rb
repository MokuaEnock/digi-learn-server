class CreateLecturers < ActiveRecord::Migration[6.1]
  def change
    create_table :lecturers do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :cohort_id
    end
  end
end
