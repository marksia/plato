class AddUserToProjectBoards < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_boards, :user, foreign_key: true, index: true
  end
end
