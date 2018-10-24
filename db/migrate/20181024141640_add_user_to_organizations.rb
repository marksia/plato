class AddUserToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_reference :organizations, :user, foreign_key: true, index: true
  end
end
