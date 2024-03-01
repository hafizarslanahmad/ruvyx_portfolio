class ProjectsController < ApplicationController
    def new
    end

    def mobile
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end
end