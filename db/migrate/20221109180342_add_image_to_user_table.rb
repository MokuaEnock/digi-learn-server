class AddImageToUserTable < ActiveRecord::Migration[6.1]
  def change
    add_column :lecturers, :image, :string
  end
end
