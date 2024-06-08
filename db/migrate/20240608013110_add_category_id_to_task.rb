class AddCategoryIdToTask < ActiveRecord::Migration[7.1]
  def change
    add_reference :tasks, :category, null: false, foreign_key:true
  end
end
