Rails.application.routes.draw do

  root 'application#index'
  devise_for :users

  resources :meals
  resources :foods
  resources :categories do
    resources :foods, only: :index
  end

  get 'dashboard' => 'application#index'

end
