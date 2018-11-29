Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flats do
    resources :visits, only: [:create]
  end
  resources :visits, only: [:index]
  resources :users, only: [:index, :show]
end
