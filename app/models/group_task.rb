class GroupTask < ApplicationRecord
  has_many :tasks
  has_many :users, through: :tasks
  validates :name, presence: true
  validates :due_date, presence: true

  def task=(task_attributes)
    if task_attributes[:name].present?
        task = Task.create(task_attributes)
        self.tasks << task
      end
  end

end
