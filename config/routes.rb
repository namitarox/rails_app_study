Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    resources :users, only: %i[create]
    resource :session, only: %i[create]
    resources :microposts, only: %i[index create show update destroy]

    namespace :me do
      resource :account, only: %i[update]
    end
  end
end
