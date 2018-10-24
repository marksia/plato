class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.references :project_board, foreign_key: true, index: true
      t.text :title, limit: 288
      t.text :description
      t.string :color, default: "#0000FF"

      t.timestamps
    end

    create_table "card_connections", :force => true, :id => false do |t|
      t.integer "card_a_id", :null => false
      t.integer "card_b_id", :null => false
    end
  end
end
