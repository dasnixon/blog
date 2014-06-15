Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :posts, except: [:new, :edit]
  end
end
