class CandidateStreamsController < ApplicationController
  before_action :authenticate_and_check_personal_information

  def new
    @candidate_stream = CandidateStream.new
  end

  def create
    @candidate_stream = CandidateStream.new(candidate_stream_params)
    @candidate_stream.candidate = current_candidate
    if @candidate_stream.save
      flash[:success] = "Your response has been saved"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def form_fields
    @stream = Stream.find(params[:stream])
    @candidate_stream = CandidateStream.new
    render 'candidate_streams/form'
  end

  private

  def candidate_stream_params
    params.require(:candidate_stream).permit(:stream_id, candidate_subjects_attributes: [:id, :candiate_id, :required_subject_id, :marks])
  end

  def authenticate_and_check_personal_information
    redirect_to :new_personal unless candidate_signed_in? && current_candidate.personal
  end
end
