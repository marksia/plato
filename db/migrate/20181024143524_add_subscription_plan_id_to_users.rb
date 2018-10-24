class AddSubscriptionPlanIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :subscription_plan, foreign_key: true, index: true
  end
end
