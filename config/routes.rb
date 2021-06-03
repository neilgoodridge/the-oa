Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


    resources :users do
      collection do
        get "dashboard"
      end
    end
    # get 'cause_task_show', to: 'causes#cause_task_show'
    get '/causes/:id/tasks', to: 'causes#cause_task_show', as: 'cause_task'
    resources :causes, only: [ :index, :show ] do
      resources :tasks, only:  [ :index, :create ] do
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end


