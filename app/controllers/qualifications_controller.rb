class QualificationsController < ApplicationController

  def index
    @qualifications = Qualification.order('year')
  end

  def new
    @qualification = Qualification.new
  end

  def create
    @qualification = Qualification.new(qualification_params)
    @qualification.candidate = current_candidate
    if @qualification.save
      flash[:sucess] = "Qualification Added"
      redirect_to qualifications_path
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    @qualification = Qualification.find(params[:id])
    if @qualification.update(qualification_params)
      flash[:sucess] = "Qualification updated"
      redirect_to qualifications_path
    else
      flash[:danger] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    @qualification = Qualification.find(params[:id])
    if @qualification.candidate = current_candidate
      @qualification.destroy
      flash[:notice] = "Qualification deleted"
    else
      flash[:danger] = "You dont have permission"
    end
    redirect_to qualifications_path
  end


  private

  def qualification_params
    params.require(:qualification).permit(:name, :description, :certificate, :year, :issuing_authority, :points)
  end

end
