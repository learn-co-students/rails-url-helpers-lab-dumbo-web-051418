class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    render :show
  end

  def activate
    if @student.active == true
      @student.active = false
    end
    render :show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
