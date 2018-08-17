Rails.application.routes.draw do
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :pages, only: [:about] do
    collection do
      get 'about', to: 'pages#about', as: :about
    end
  end
end
