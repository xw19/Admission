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

  test "last name should be present" do
    @personal.last_name = ""
    assert_not @personal.valid?
  end

  test "last name should not be too long" do
    @personal.last_name = "a" * 21
    assert_not @personal.valid?
  end

  test "date of birth should be present" do
    @personal.date_of_birth = ""
    assert_not @personal.valid?
  end

  test "fathers name should be present" do
    @personal.fathers_name = ""
    assert_not @personal.valid?
  end

  test "fathers name should not be too long" do
    @personal.fathers_name = "a" * 51
    assert_not @personal.valid?
  end

  test "mothers name should be present" do
    @personal.mothers_name = ""
    assert_not @personal.valid?
  end

  test "mothers name should not be too long" do
    @personal.mothers_name = "a" * 51
    assert_not @personal.valid?
  end

  test "caste should be present" do
    @personal.caste = ""
    assert_not @personal.valid?
  end

  test "caste shouldn't accept invalid castes" do
    invalid_caste = %w(abcd random 123 awee45)
    invalid_caste.each do |ic|
      @personal.caste = ic
      assert_not @personal.valid?, "Invalid caste"
    end
  end
end
