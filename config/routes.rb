Rails.application.routes.draw do

	root "bar#index"
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
  resources :bars do
    resources :reviews
    resources :reservations
   end
end
