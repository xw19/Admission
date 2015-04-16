require 'rails_helper'

RSpec.describe CandidateSubject, type: :model do
  it "marks should be present" do
    candidate_subject = CandidateSubject.new(marks: '')
    expect(candidate_subject).not_to be_valid
  end

  it "marks should not be greater than 100" do
    candidate_subject = CandidateSubject.new(marks: 101)
    expect(candidate_subject).not_to be_valid
  end

end
