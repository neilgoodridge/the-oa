Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'

  namespace :user do
    root to: "users#dashboard"
  end

    resources :users do
      collection do
        get "dashboard"
        post "store_tasks"
      end
    end
    # get 'cause_task_show', to: 'causes#cause_task_show'
    get '/causes/:id/add_selected_cause_path', to: 'causes#add_selected_cause',as: 'add_selected_cause'
    get '/causes/select_time', to: 'causes#select_time',as: 'select_time'
    get '/causes/next_cause', to: 'causes#next_cause',as: 'next_cause'
    get '/causes/previous_cause', to: 'causes#previous_cause',as: 'previous_cause'
    get '/causes/:id/tasks/:time', to: 'causes#cause_task_show', as: 'cause_id_task'
    get '/causes/tasks', to: 'causes#cause_task_show', as: 'cause_task'
    get 'causes/tasks/time', to: 'causes#time', as: 'task_time'
    get '/users/dashboard/next_cause', to: 'users#next_cause',as: 'dashboard_next_cause'
    get '/users/dashboard/previous_cause', to: 'users#previous_cause',as: 'dashboard_previous_cause'
    resources :causes, only: [ :index, :show ] do
      resources :tasks, only:  [ :index, :create ] do
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


