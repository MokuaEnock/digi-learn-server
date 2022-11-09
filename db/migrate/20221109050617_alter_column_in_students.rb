class AlterColumnInStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :lecture_id
      add_column :students, :lecturer_id, :integer
  end
end
