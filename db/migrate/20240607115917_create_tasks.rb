class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :checked, default: false
      t.datetime :due_date

      t.timestamps
    end
  end
end
