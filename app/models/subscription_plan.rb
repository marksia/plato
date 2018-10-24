class SubscriptionPlan < ApplicationRecord
  has_many :users

  enum type: [ :solo, :startup, :enterprise ]
  enum plan: [ :monthly, :annually ]

end
