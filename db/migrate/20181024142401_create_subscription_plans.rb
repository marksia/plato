class CreateSubscriptionPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_plans do |t|
      t.integer :type
      t.integer :plan
      t.integer :number_of_licenses
      t.float :monthly_charge
      t.float :annual_charge

      t.timestamps
    end
  end
end
