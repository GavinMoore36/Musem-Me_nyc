Rails.application.routes.draw do
  resources :museums

  post '/queues', to: 'queue#index', as: "queues_index"
  patch '/queue', to: 'queue#update', as: "add_museum_to_queue"
end
