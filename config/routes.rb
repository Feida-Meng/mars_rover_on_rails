Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rovers#index'
  get 'rovers' => 'rovers#index'

  get 'rovers' => 'rovers#index'

  post 'rovers' => 'rovers#create'
  get 'rovers/new' => 'rovers#new'


  get 'rovers/:id' => 'rovers#show', as: 'rover'



end
