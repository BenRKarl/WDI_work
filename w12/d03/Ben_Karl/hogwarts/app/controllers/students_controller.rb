class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    new_student = Student.new
  end

  def create
    name = params[:name]
    new_student = Student.create({name: name})
    house = Houses.find(1 + rand(4))
    house.students << new_student
    redirect_to '/'
  end

private

end
