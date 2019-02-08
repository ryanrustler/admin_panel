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
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(courses_params)
        redirect_to course_path(@course)
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end

    private
    def courses_params
        params.require(:course).permit(:name, :hours)
end
end
