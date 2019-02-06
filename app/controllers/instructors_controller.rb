class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = instructor.new(instructors_params)
        if @instructor.save
            redirect_path
        else
            redirect_to root_path
        end
        
    end
    
end
