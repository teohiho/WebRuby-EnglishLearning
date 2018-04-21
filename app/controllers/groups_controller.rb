class GroupsController < ApplicationController
	def show
		render json: { all_group: Group.all }
	end
end
