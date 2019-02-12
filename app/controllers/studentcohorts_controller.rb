class StudentcohortsController < ApplicationController
    def index
        @studentcohorts = Studentcohort.all
    end

end