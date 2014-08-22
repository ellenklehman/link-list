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
end
