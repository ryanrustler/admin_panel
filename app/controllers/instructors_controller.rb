class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
        @cohorts = Cohort.all
    end

    def new
        @instructor = Instructor.new
        @cohorts = Cohort.all

        render :new
    end

    def create
        @instructor = Instructor.new(instructors_params)
        if @instructor.save
            redirect_to @instructor
            else
            @cohorts = Cohort.all
            render :new
        end
        
    end         

    def show
        @instructor = Instructor.find(params[:id])
    end

    def edit
        @instructor = Instructor.find(params[:id])
        @cohorts = Cohort.all
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructors_params)
        redirect_to instructor_path(@instructor)
        @cohorts = Cohort.all
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to instructors_path
    end



private
def instructors_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education, :cohort_id)
  end


end
