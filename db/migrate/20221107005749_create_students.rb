class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :lecture_id
      t.integer :cohort_id
      t.string :grade
    end
  end
end
