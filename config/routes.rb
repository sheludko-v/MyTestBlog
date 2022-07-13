Rails.application.routes.draw do

  root 'posts#index'

  resources :posts

  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
