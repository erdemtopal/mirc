Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end    

  devise_for :users
  root'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  get 'user/:id', to: 'users#show', as: 'user'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
