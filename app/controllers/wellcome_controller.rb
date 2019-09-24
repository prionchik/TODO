class WellcomeController < ApplicationController
  def index
    @projects = Project.all
    @projects_titles=Project.all.map{|u| [ u.title, u.id ] }
  end

  def create
    @todo=Do.new(todo_params)
    @todo.save
    redirect_to action: "index"
    # render plain: params[:todo_create].inspect
  end

  def update
    @todos = Do.find_by(params.require(:todos).permit(:id))
    @todoo = @todos.update(bool)
    # redirect_to action: "index"
  end

  private def todo_params
    params.require(:todo_create).permit(:text, :project_id)
  end

  def bool
    params.require(:todos).permit(:isCompleted)
  end

end
