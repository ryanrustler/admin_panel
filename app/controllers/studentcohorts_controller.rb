class StudentcohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
        @courses = Courses.all
        @studentc = StudentC.all
    end
end
