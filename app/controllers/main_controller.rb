class MainController < ApplicationController
    def index 
    end

    def home
    end

    def designing
       @designings = Designing.all 
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
