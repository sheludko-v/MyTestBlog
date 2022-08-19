Rails.application.routes.draw do

  root 'posts#index'

  resources :posts do
    get '/page/:page', action: :index, on: :collection
  end

  get 'results', to: 'results#index', as: 'results'

  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/users/sign_in' => 'devise/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resource :password_reset, only: %i[new create edit update]

end
