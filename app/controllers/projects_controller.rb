class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create

    @project = Project.new(project_params)

    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:image, :title, :description, :info, :ordernumber)
    end
end
