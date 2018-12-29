require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
    else
        @student.active = true
    end
    @student.save
  #  binding.pry
    redirect_to student_path(@student)
  end

  private

  def set_student
  #  binding.pry
    @student = Student.find(params[:id])
  end


end
