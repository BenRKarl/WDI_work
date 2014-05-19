class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @school = School.new
    @school.courses.build
  end

  def create
    new_school = School.create(school_params)

    params[:school][:courses_attributes].each do |key, course_params|
      new_course = Course.create(course_params)
      new_school.courses << new_course
    end

    redirect_to schools_path
  end

  private

   def school_params
    params.require(:school).permit(:name, :courses_attributes)
   end

end

