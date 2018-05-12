Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # VERB PATH, to: 'CONTROLLER#ACTION'

  resources :tasks

  # get "tasks/new", to: "tasks#new", as: :new
  # post "tasks", to: "tasks#create", as: :create
  # get "tasks", to: "tasks#index", as: :tasks
  # patch 'task/:id', to: 'task#update'
  # get 'task/:id/edit', to: 'task#edit', as: :edit
  # get "tasks/:id", to: "tasks#show", as: :task

end
