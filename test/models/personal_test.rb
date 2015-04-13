require 'test_helper'

class PersonalTest < ActiveSupport::TestCase

  def setup
    @personal = personals(:one)
  end

  test "personal should be valid" do
    @personal.first_name = ""
    assert_not @personal.valid?
  end
end
