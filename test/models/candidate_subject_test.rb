require 'test_helper'

class CandidateSubjectTest < ActiveSupport::TestCase
  def setup
    @candidate_subject = candidate_subject(:one)
  end
  test "it should have marks" do
    @candidate_subject.marks = ""
    assert_not @candidate_subject.valid?
  end
end
