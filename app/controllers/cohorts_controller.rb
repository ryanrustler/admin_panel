class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
end

def new 
    @cohort = Cohort.new
end

def create
    @instructor = Instructor.new(instructors_params)
    if @instructor.save
        redirect_to instructors_path
    else
        redirect_to root_path
    end
end



