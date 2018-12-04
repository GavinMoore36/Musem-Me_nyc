Rails.application.routes.draw do
  resources :users, only:[:show, :new, :create, :edit, :update]
  resources :museums, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/queues', to: 'queue#index', as: "queues_index"
  patch '/queue', to: 'queue#update', as: "add_museum_to_queue"
end
