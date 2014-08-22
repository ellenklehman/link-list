Rails.application.routes.draw do
  root to: 'links#index'

  match('/links', {:via => :get, :to => 'links#index'})
  match('/links', {:via => :post, :to => 'links#create'})
  match('/links/new', {:via => :get, :to => 'links#new'})
  match('/links/:id', {:via => :get, :to => 'links#show'})
end
