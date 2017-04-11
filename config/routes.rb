Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rovers#index'

  patch 'rovers' => 'rovers#update_position'
  resources :rovers
  # get 'rovers' => 'rovers#index'
  #
  # post 'rovers' => 'rovers#create'
  # get 'rovers/new' => 'rovers#new'
  #
  # get 'rovers/:id/edit' => 'rovers#edit', as: 'edit_rover'
  # patch 'rovers/:id/edit' => 'rovers#update'
  #
  # get 'rovers/:id' => 'rovers#show', as: 'rover'



end
