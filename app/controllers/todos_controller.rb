class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index   
    if (todo_params[:project_id] == 0)
      project = Project.create(title: params[:project_title])
      todo = Todo.create(todo_params)
      
      project.todos.push(todo)
      
      render :json => {
        status: 201,
        message: "Создана новая категория и задача",
      }
    else
      todo = Todo.create(todo_params)
      
      render :json => {
        status: 201,
        message: "Создана новая задача",
      }
    end   
  end

  private

  def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end
