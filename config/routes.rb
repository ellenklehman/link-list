Rails.application.routes.draw do
  root to: 'links#index'

  match('/links', {:via => :get, :to => 'links#index'})
end
