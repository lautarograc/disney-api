Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  post 'register', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
    resources :characters, defaults: {format: :json}
    resources :categories, defaults: {format: :json}
    resources :movies, defaults: {format: :json}
    

    end
  end
end
