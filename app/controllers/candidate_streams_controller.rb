class CandidateStreamsController < ApplicationController
  before_action :authenticate_candidate!

  def new
    @candidate_stream = CandidateStream.new
  end

  def create
    @candidate_stream = current_candidate.build_candidate_stream(candidate_stream_params)
    if @candidate_stream.save
      flash[:success] = "Your response has been saved"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @candidate_stream = current_candidate.candidate_stream
  end

  def update
  end

  def destroy
  end

  private

  def candidate_stream_params
    params.require(:candidate_stream).permit(:stream_id)
  end
end
