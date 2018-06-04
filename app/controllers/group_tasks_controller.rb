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
