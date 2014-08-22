class LinksController < ApplicationController

  def index
    @links = Link.all
    render('links/index.html.erb')
  end

  def new
  	@link = Link.new
  	render('links/new.html.erb')
  end

  def create
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
  	render('links/show.html.erb')
  end
end
