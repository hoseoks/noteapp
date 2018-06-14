Rails.application.routes.draw do
  root to: 'notes#index'
  get 'notes/new', to: 'notes#new'
  get 'notes/create', to: 'notes#create'
  get 'notes/edit/:id', to: 'notes#edit'
  get 'notes/update/:id', to: 'notes#update'
  get 'notes/destroy/:id', to: 'notes#destroy'
  get 'notes/show/:id', to: 'notes#show'
end
