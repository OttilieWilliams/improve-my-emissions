Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :users, params: [:name, :email]
      resources :eco_friendly_ideas, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
