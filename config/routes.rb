Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  namespace :api, constraints: { subdomain: 'api' }, path: '' do
    resources :users
    namespace :v1 do
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
