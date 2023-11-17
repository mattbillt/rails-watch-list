Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :new_bookmark

  # post 'lists/:id/bookmarks', to: 'bookmarks#create'

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "lists#index"
  # get '/lists', to: 'lists#index', as: :lists

  # post '/lists', to: 'lists#create'

  # get '/lists/new', to: 'lists#new', as: :new_list

  # get 'lists/:id', to: 'lists#show', as: :list

    resources :lists, only: [:create, :new, :show] do

    resources :bookmarks, only: [:new, :create]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
