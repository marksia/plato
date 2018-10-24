class Card < ApplicationRecord
  belongs_to :project_board

  validates_length_of :title, maximum: 288

  has_and_belongs_to_many(:cards,
    :join_table => "card_connections",
    :foreign_key => "card_a_id",
    :association_foreign_key => "card_b_id")

  has_one :task_list
end
