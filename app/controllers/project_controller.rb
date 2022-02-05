class ProjectController < ApplicationController
  skip_before_action :verify_authenticity_token

  def  index
    projects = Project.all

    render json: projects, include: ['todos']
  end

  def switch_complete
    todo = Project.find(params[:project_id]).todos.find(params[:todo_id])

    todo[:isCompleted] = !todo[:isCompleted]
    todo.save

    render :json => {
      status: 200,
      message: 'Изменено'
    }
  end
end