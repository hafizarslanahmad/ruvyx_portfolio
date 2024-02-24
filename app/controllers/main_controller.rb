class MainController < ApplicationController
    def index 
    end

    def home
    end

    def designing
        @designing = Designing.find(params[:id])
    end

    def development
    end

    def mobile
    end

    def marketing
    end

    def contact
    end
end
