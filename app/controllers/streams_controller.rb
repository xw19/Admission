class StreamsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @streams = Stream.order('name')
  end

  def new
    @stream = Stream.new
    2.times do
       required_subject = @stream.required_subjects.build
       required_subject.build_castewise_mark
     end
  end


  def create
    @stream = Stream.new(streams_params)
    if @stream.save
      flash[:success] = "Stream Created successfully"
      redirect_to streams_path
    else
      render 'new'
    end
  end


  def edit
    @stream = Stream.find(params[:id])
  end

  def update
    @stream = Stream.find(params[:id])
    if @stream.update_attributes(streams_params)
      flash[:success] = "Stream updated successfully"
    else
      render 'new'
    end
  end

  def destroy
    @stream = Stream.find(params[:id])
    @stream.destroy
    redirect_to streams_path, notice: "Stream deleted"
  end

  private

  def streams_params
    params.require(:stream).permit(:name, required_subjects_attributes: [:id, :subject_name, castewise_mark_attributes: [:gen, :sc, :st, :obca, :obcb]])
  end
end
