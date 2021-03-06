class StudentsController < ApplicationController

def index
    @students = Student.all
    @cohorts = Cohort.all
end

    def new
        @student = Student.new
end


def create
    @student = Student.create(students_params)
    if @student.save
        redirect_to students_path
    else
        render 'new'
    end

end

def show
    @student = Student.find(params[:id])
end

def edit
    @student = Student.find(params[:id])
end

def update
    @student = Student.find(params[:id])
    @student.update(students_params)
    redirect_to student_path(@student)
end


def destroy
    @student =  Student.find(params[:id])
    @student.destroy
    redirect_to students_path
end



private
def students_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
