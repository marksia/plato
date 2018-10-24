class Task < ApplicationRecord
  belongs_to :task_list

  enum state: [ :checked, :unchecked ]

  after_update do
    task_list.card.update(color: "#3CFF33") if task_list.completed?
  end
end

