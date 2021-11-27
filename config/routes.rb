Rails.application.routes.draw do
  get '/projects', to: 'project#index'
  patch '/projects/:project_id/todos/:todo_id', to: 'project#switch_complete'
  post '/todos', to: 'todos#index'
end
