class RemoveTypeColumnInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :type, :string
  end
end
