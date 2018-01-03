class TasksController < ApplicationController
 	



  def create
  	params[:task][:what_to_do].each_line.each do |task|
			Task.create(what_to_do: task, user_id: current_user.id, date: Time.now.strftime("%d/%m/%Y"))
  	end
  	redirect_to root_path

	# if(@task.save)
	# 	redirect_to root_path
	# else
	# 	render plain: "error"
	# end
  end

 

  def update
		@task = Task.find(params[:id])
		if(@task.update!(params.require(:task).permit(:what_done)))
			redirect_to root_path
		else
			render plain: "error"
		end
	end

	def set_checkbox
		task = Task.find(params[:task_id])
		if(Department.task.find(task.id))
			if(plan.checkbox == true)
				 task.update!(checkbox: false)
	    	else
	    		task.update!(checkbox: true)
	    	end
	    end
	end
		
	
end
