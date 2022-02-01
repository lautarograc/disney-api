Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
    resources :characters, only: [:create, :index, :update, :destroy]
    resources :categories
    resources :movies
    end
  end
resources :characters
end
