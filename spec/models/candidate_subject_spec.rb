require 'rails_helper'

RSpec.describe CandidateSubject, type: :model do
  it "should be present" do
    candidate_subject = CandidateSubject.new(marks: '')
    expect(candidate_subject).not_to be_valid  
  end
end
