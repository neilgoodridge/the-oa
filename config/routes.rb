Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :users do
      collection do
        get "dashboard"
      end
    end

    resources :causes, only: [ :index, :show ] do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only:  [:show, :create, :new ] do
  end
end
