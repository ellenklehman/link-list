class LinksController < ApplicationController

  def index
    @links = Link.all
    render('links/index.html.erb')
  end

  def new
  	@link = Link.new
    @student = Student.new
    @students = Student.all
  	render('links/new.html.erb')
  end

  def create
    @student = Student.find_by(params[:student])
    @students = Student.all
  	@link = Link.new(params[:link])
  	if @link.save
  		flash[:notice] = "Your link was successully created."
  		redirect_to("/links/#{@link.id}")
  	else
  		render('links/new.html.erb')
  	end
  end

  def show
  	@link = Link.find(params[:id])
    @student = Student.find(@link.student_id)
  	render('links/show.html.erb')
  end

  def edit
  	@link = Link.find(params[:id])
  	render('links/edit.html.erb')
  end

  def update
  	@link = Link.find(params[:id])
  	if @link.update(params[:link])
  		redirect_to("/links/#{@link.id}")
  	else
  		render('links/edit.html.erb')
  	end
  end

  def destroy
  	@link = Link.find(params[:id])
  	@link.destroy
  	redirect_to('/')
  end
end
