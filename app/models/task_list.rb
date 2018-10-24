class TaskList < ApplicationRecord
  belongs_to :card
  has_many :tasks

  after_create do
    card.update(color: "#FF3333")
  end

  def completed?
    tasks.each do |task|
      return false if task.unchecked?
    end
    true
  end
end
