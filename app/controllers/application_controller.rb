class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def index
    @my_tasks = []
    Task.all.each do |t|
       if t.user_id == current_user.id
          @my_tasks << t
       end
    end
  end

end
