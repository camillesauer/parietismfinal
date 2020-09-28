Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :ais_articles , only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :avatars, only: [:new, :create, :show, :update, :edit, :destroy]
  resources :teams, only: [:index]
  resources :categories, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :themes , only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :rir_articles , only: [:index, :new, :create, :show, :update, :edit, :destroy]

  get    '/mentions'      => 'pages#mentions'
  get    '/themes/:theme_id'      => 'rir_articles#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
