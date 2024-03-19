class ProjectsController < ApplicationController

    def categories 
        @projects = Project.where(category: params[:type])
    end
    
    def show
        @project = Project.find(params[:id])
    end

    def marketing
    end

    def contact
    end
end