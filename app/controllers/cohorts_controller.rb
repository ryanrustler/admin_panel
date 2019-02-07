class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
end

def new 
    @cohort = Cohort.new
end

def create
    @cohort = Cohort.new(cohorts_params)
    if @cohort.save
        redirect_to cohorts_path
    else
        redirect_to root_path
    end
end

def show
    @cohort = Cohort.find(params[:id])
end



    private
def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :edn_date, :instructor, :students)
  end
end





