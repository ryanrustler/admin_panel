class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
        @students = Student.all
        @courses = Course.all
end

def new 
    @cohort = Cohort.new
    @students =Student.all
    @instructors = Instructor.all
    @courses = Course.all
end

def create
    @cohort = Cohort.new(cohorts_params)
    if @cohort.save
        Studentcohort.create(
            student_id: params[:cohort][:student_id],
            cohort_id: @cohort.id
        )
               redirect_to @cohort
    else
        render 'new'
    end
end

def show
    @cohort = Cohort.find(params[:id])
    @students = (@cohort.students.all).uniq
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
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end
end





