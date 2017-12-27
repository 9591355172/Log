class HomeController < ApplicationController
	
	def index
		@tasks = current_user.tasks
		@task = @tasks.find_by(date: Time.now.strftime("%d/%m/%Y"))
	end
	

	def create
		@task = Task.new(params.require(:task).permit(:what_to_do).merge(:user_id => current_user.id, :date => Time.now.strftime("%d/%m/%Y"))) 
	

		if(@task.save)
			redirect_to root_path
		end
	end

end
