Rails.application.routes.draw do
  get 'notes/index', to: 'notes#index'
  get 'notes/show', to: 'notes#show'
end
