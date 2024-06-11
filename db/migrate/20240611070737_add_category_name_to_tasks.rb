class AddCategoryNameToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :category_name, :string
  end
end
