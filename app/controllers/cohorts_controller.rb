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
        StudentCohort.create(
            student_id: params[:cohort][:student_id],
            cohort_id: @cohort.id
        )
        redirect_to @cohort
    else
        redirect_to root_path
    end
end

def show
    @cohort = Cohort.find(params[:id])
end

def edit
    @cohort = Cohort.find(params[:id])
end

def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohorts_params)
    redirect_to cohort_path(@cohort)

end

def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to cohorts_path

end


    private
def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor, :students)
  end
end





