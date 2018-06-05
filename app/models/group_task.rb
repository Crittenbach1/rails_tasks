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

  def self.group_task_progress(group_task)
    binding.pry
  end

end
