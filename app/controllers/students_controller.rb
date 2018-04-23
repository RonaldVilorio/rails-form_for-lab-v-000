class StudentsController < ApplicationController
  def create
<<<<<<< HEAD
    @student = Student.new(post_params(:first_name,:last_name))
=======
    @student = Student.new(post_params(:title,:room_number))
>>>>>>> 81c1d8c3976a1882e56d41819b16d665fd9582bc
  	@student.save
  	redirect_to student_path(@student)
  end
  def new
    @student = Student.new
  end
  def show
    @student = Student.find(params[:id])
  end
<<<<<<< HEAD
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
  	@student.update(post_params(:first_name,:last_name))
  	redirect_to student_path(@student)

  end
=======
>>>>>>> 81c1d8c3976a1882e56d41819b16d665fd9582bc
  private
		def post_params(*args)
  		params.require(:student).permit(*args)
		end
end
