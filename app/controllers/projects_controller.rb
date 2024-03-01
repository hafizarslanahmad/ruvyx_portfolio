class ProjectsController < ApplicationController
    def new
    end

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end
end