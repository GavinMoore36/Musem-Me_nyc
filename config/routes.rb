Rails.application.routes.draw do
  resources :museums, only:[:index, :show]
  resources :boroughs, only:[:index, :show]
  get '/', to: 'application#welcome', as: "home_index"
  post '/search', to: 'museums#search', as: "search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/queues', to: 'queues#index', as: "queues_index"
  get '/queues', to: 'queues#index', as: "queues_index_refresh"
  patch '/queue', to: 'queues#update', as: "add_museum_to_queue"
end
