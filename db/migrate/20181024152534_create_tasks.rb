class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :task_list, foreign_key: true, index: true
      t.integer :state
      t.text :description, limit: 288

      t.timestamps
    end
  end
end
