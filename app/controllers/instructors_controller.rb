class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructors_params)
        if @instructor.save
            redirect_to instructors_path
        else
            redirect_to root_path
        end
        
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end



    private
def instrutors_params
    params.permit(:first_name, :last_name, :age,:salary, :education)
  end


end
