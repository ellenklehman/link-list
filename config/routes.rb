Rails.application.routes.draw do
  root to: 'links#index'

  match('/links', {:via => :get, :to => 'links#index'})
  match('/links', {:via => :post, :to => 'links#create'})
  match('/links/new', {:via => :get, :to => 'links#new'})
  match('/links/:id', {:via => :get, :to => 'links#show'})
  match('/links/:id', {:via => [:patch, :put], :to => 'links#update'})
  match('/links/:id', {:via => :delete, :to => 'links#destroy'})
  match('/links/:id/edit', {:via => :get, :to => 'links#edit'})

  match('/students', {:via => :get, :to => 'students#index'})
  match('/students', {:via => :post, :to => 'students#create'})
  match('/students/new', {:via => :get, :to => 'students#new'})
  match('/students/:id', {:via => :get, :to => 'students#show'})
  match('/students/:id', {:via => [:patch, :put], :to => 'students#update'})
  match('/students/:id', {:via => :delete, :to => 'students#destroy'})
  match('/students/:id/edit', {:via => :get, :to => 'students#edit'})

end
