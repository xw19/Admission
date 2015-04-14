require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  def setup
    @address = address(:one)
  end

  test "it should be valid" do
    assert @address.valid?
  end

  test "line1 should be present" do
    @address.line1 = ""
    assert_not @address.valid?
  end

  test "line1 should not be too long" do
    @address.line1 = "a" * 51
    assert_not @address.valid?
  end


  test "line2 should not be too long" do
    @address.line2 = "a" * 51
    assert_not @address.valid?
  end


  test "city_village should be present" do
    @address.city_village = ""
    assert_not @address.valid?
  end

  test "city_village should not be too long" do
    @address.city_village = "a" * 51
    assert_not @address.valid?
  end

  test "district should be present" do
    @address.district = ""
    assert_not @address.valid?
  end

  test "district should not be too long" do
    @address.district = "a" * 51
    assert_not @address.valid?
  end

  test "state should be present" do
    @address.state = ""
    assert_not @address.valid?
  end

  test "state should not be too long" do
    @address.state = "a" * 51
    assert_not @address.valid?
  end

  test "country should be present" do
    @address.country = ""
    assert_not @address.valid?
  end

  test "country should not be too long" do
    @address.country = "a" * 51
    assert_not @address.valid?
  end

  test "pin should be present" do
    @address.pin = ""
    assert_not @address.valid?
  end

  test "pin should have a correct format" do
    invalid_pins = [1, 12, 123, 1234, 12345, "abcdef"]
    invalid_pins.each do |ip|
      @address.pin = ip
      assert_not @address.valid?, "Invalid pin"
    end
  end

end
