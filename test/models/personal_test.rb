require 'test_helper'

class PersonalTest < ActiveSupport::TestCase

  def setup
    @personal = personals(:one)
  end

  test "personal should be valid" do
    @personal.first_name = ""
    assert_not @personal.valid?
  end

  test "first name should not be too long" do
    @personal.first_name = "a" * 21
    assert_not @personal.valid?
  end

  test "middle name should not be too long" do
    @personal.middle_name = "a" * 21
    assert_not @personal.valid?
  end
end
