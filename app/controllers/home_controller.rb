class HomeController < ApplicationController
	
	def index
		if (user_signed_in?)
      		 @user=current_user
      
     		 @tasks = current_user.tasks
     		 @dates = @tasks.group_by(:date).map(&:date).uniq
     		 
     		 @tasks_perday = @tasks.where(date: Time.now.strftime("%d/%m/%Y"))
     
  		else
  		  redirect_to new_user_session_path
 		 end
 		 
		 

 	 end

	

	

	  def send_email
  		UserMailer.send_email.deliver_now
  		redirect_to root_path
	  end

end


