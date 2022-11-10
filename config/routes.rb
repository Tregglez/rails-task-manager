Rails.application.routes.draw do
  # # -- Home --
  # get 'tasks', to: 'tasks#index'
  # # --
  # # When creating a task, it must be above the 'show one' function
  # # otherwise the order will break.
  # # --
  # # -- Creating a new task --
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'

  # # -- Showing a singular task --
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # -- Edit a task
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'

  # # -- Delete a task --
  # delete 'tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
