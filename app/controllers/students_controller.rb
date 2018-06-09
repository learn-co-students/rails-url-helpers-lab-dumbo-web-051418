class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    #@student = set_student
    render :show
  end

  def activate
    @student = set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end

    @student.save
    #redirect_to student_path(@student.id)
    render :show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
