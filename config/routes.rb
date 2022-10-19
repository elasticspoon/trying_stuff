Rails.application.routes.draw do
  resources :cars
  resources :posts
  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  get 'errors/not_found'
  get 'errors/internal_server_error'
  # namespace :api, constraints: { subdomain: 'api' }, path: '' do
  #   resources :users
  #   namespace :v1 do
  #     resources :users
  #   end
  # end
  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: APIConstraints.new(version: 1) do
      resources :users
    end
    scope module: :v2, constraints: APIConstraints.new(version: 2, default: true) do
      resources :users
    end
  end

  resources :users
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
end
