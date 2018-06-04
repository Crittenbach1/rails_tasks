class GroupTasksController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def show

  end

  def new
    @group_task = GroupTask.new
    @task = Task.new
  end

  def create
    @group_task = GroupTask.new(group_task_params)
    if @group_task.save
      redirect_to group_task_path(@group_task)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def delete

  end

  private
    def group_task_params

    end

end
