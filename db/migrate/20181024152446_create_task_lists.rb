class CreateTaskLists < ActiveRecord::Migration[5.1]
  def change
    create_table :task_lists do |t|
      t.references :card, foreign_key: true, index: true

      t.timestamps
    end
  end
end
