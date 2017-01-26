class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order("created_at desc")
  end

  def new
    @project = Project.new
  end

  def create
      @project = Project.new project_params
      if @project.save
        redirect_to @project, notice: "Good job! That project has been successfully saved"
      else
        render 'new'
      end
  end

  private

  def project_params
    params.require(:project).permit(:title, :decription, :link)
  end

end
