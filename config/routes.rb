Rails.application.routes.draw do
<<<<<<< HEAD
	resources :users
	resources :sessions, only: [:new, :create, :destroy]
=======
  root 'bars#index'
  resources :bars do
    resources :reviews
    resources :reservations
  end
>>>>>>> 3543017f105cef324c3a77805e71f3bf8416e7a3
end
