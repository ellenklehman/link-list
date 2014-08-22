class StudentsController < ApplicationController
	def index
		@students = Student.all
		render('/students/index.html.erb')
	end

	def new
		@student = Student.new
		render('/students/new.html.erb')
	end
end
