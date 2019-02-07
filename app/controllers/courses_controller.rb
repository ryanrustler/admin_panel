class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new 
        @course = Course.new
    end

    def




















    private
    def courses_params
        params.require(:course).permit(:courses, :hours)
end
