class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def new
        @instructor = Instructor.new
    end

end
