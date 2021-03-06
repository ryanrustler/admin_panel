class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
        @students = Student.all.uniq
        @courses = Course.all
        @instructors = Instructor.all
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
    @instructors = Instructor.all
    
end

def edit
    @cohort = Cohort.find(params[:id])
    @students = Student.all
    @instructors =Instructor.all
    @studentcohort = Studentcohort.all
    @courses = Course.all
end

def update
    @cohort = Cohort.find(params[:id])
    @courses = Course.all
    @instructors = Instructor.all
    @cohort.update(cohorts_params)
    if @cohort.save
        Studentcohort.create(
            student_id: params[:cohort][:student_id],
            cohort_id: @cohort.id
        )
               redirect_to @cohort
    else
        render 'edit'
    end

end

def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to cohorts_path

end


private
def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :instructor_id)
  end
end





