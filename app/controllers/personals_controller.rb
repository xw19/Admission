class PersonalsController < ApplicationController
  before_action :authenticate_candidate!

  def new
    @personal = Personal.new
  end

  def create
    @personal = Personal.new(personal_params)
    @personal.candidate = current_candidate
    if @personal.save
      flash[:success] = "Personal Created"
      redirect_to root_path
    else
      flash[:danger] = "Some error occured"
      render 'new'
    end
  end

  def edit
    @personal = current_candidate.personal
  end

  def update
    @personal = current_candidate.update_personal(personal_params)
    if @personal.save
      flash[:success] = "Personal Updated"
      redirect_to root_path
    else
      flash[:danger] = "Some error occured"
      render 'new'
    end
  end

  def show
    @personal = current_candidate.personal
  end

  private

  def personal_params
    params.require(:personal).permit(:first_name, :last_name, :middle_name, :date_of_birth, :gender, :fathers_name, :mothers_name)
  end

end
