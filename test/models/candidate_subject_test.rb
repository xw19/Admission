require 'test_helper'

class CandidateSubjectTest < ActiveSupport::TestCase
  def setup
    @candidate_subject = candidate_subject(:one)
  end
  test "it should have marks" do
    @candidate_subject.marks = ""
    assert_not @candidate_subject.valid?
  end

  test "marks should not be greater than 100" do
    @candidate_subject.marks = 101
    assert_not @candidate_subject.valid?
  end
end
