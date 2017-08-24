class TeachersController < ApplicationController
  def new
  	@teacher = Teacher.new
  end

  def create
  	@teacher = Teacher.new(teacher_params)
  	if @teacher.save
  		redirect_to teachers_path
  	else
  		render 'new'
  	end
  end

  def index
  	@teachers = Teacher.all
  end
private
  
  def teacher_params
  	params.require(:teacher).permit!
  end
end
