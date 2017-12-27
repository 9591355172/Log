class TasksController < ApplicationController
 	

 	def index
		@users = User.all
	end


  def create

  	@task = Task.new(params.require(:task)
  					.permit(:what_to_do)
  					.merge(:user_id => current_user.id, 
  							:date => Time.now.strftime("%d/%m/%Y"))) 
	
	if(@task.save!)
		redirect_to root_path
	end

  end

  def show
  		@tasks=Task.all
  end

  def update
		@task = Task.find(params[:id])
		if(@task.update!(params.require(:task).permit(:what_done)))
			redirect_to root_path
		else
			render plain: "error"
		end
	end

	
		
	
end
