Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get all tasks
  get '/tasks', to: 'tasks#index', as: :tasks
  # CREATE THE RESTAURANT INTO THE DB
  post '/tasks', to: 'tasks#create'

  # new tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # Display info about one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Display Edit Task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # update DB
  patch '/tasks/:id', to: 'tasks#update'

  # Delete task from DB
  delete '/tasks/:id', to: 'tasks#destroy'
end
