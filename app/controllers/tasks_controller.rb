class TasksController < ApplicationController
  before_action :authenticate_user!

    def index
      @my_tasks = []
      Task.all.each do |t|
         if t.user_id == current_user.id
            @my_tasks << t
         end
      end
    end

    def show
    end

    def edit
      @task = Task.find(params[:id])
    end

    def update
     @task = Task.find(params[:id])
     if @task.status == false
        @task.status = true
     else
       @task.status = false
     end
     @task.save
     redirect_to root_path
    end

    def destroy
      @task = Task.find(params[:id])
      @task.delete
      redirect_to root_path
    end


      private
        def task_params
          params.require(:task).permit(:name)
        end



end
