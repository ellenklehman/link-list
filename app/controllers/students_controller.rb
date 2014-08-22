class StudentsController < ApplicationController
	def index
		@students = Student.all
		render('/students/index.html.erb')
	end

	def new
		@student = Student.new
		render('/students/new.html.erb')
	end

	def create
		@student = Student.new(params[:student])
		if @student.save
			flash[:notice] = "Your profile was successfully created."
			redirect_to("/students/#{@student.id}")
		else
			render('/students/new.html.erb')
		end
	end

	def show
		@student = Student.find(params[:id])
		if @student.links.empty?
			@error = "There are no links added yet."
		end
		render('/students/show.html.erb')
	end
end
