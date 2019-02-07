class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new 
        @course = Course.new
    end

    def create
        @course = Course.new(courses_params)
        if @course.save
            redirect_to courses_path
        else
            redirect_to root_path
        end
    end

    def show
        @course = Course.find(params[:id])
    end

    def edit
        @course = Course.new(params[:id])
    end

    



























    private
    def courses_params
        params.require(:course).permit(:courses, :hours)
end
end
