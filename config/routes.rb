Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :members, only: %i[show index new create] do
    resources :contracts, only: %i[show index new create]
  end
  resources :trainings, only: %i[show index new create] do
    resources :sessions, only: %i[new create index]
  end
  resources :packages, only: %i[show index new create]
  resources :trainers, only: %i[show index new create]
end
