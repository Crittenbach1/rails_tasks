class TasksController < ApplicationController
  before_action :authenticate_user!

  def edit
    @task = Task.find(params[:id])
  end

  def update
   binding.pry
  end

end
