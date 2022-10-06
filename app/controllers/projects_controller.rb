class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end

  def article_params
    params.require(:project).permit(:name, :description, :details, :tools, :where, :photo)
  end
end
