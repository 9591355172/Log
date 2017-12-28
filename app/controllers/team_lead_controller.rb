class TeamLeadController < ApplicationController

	def index
		@user=User.all

		@tasks = current_user.tasks
	
end
end
