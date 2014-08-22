class LinksController < ApplicationController
  def index
    @links = Link.all
    render('links/index.html.erb')
  end
end
