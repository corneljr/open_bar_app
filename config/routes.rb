Rails.application.routes.draw do
  root 'bars#index'
  resources :bars do
    resources :reviews
    resources :reservations
  end
end
