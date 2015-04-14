require 'rails_helper'

RSpec.describe Personal, type: :model do

  it "first name should be present" do
    personal = build(:personal, first_name: '')
    expect(personal).not_to be_valid
  end

  it "first name should not be too long" do
    personal = build(:personal, first_name: 'a' * 21)
    expect(personal).not_to be_valid
  end

  it "middle name should not be too long" do
    personal = build(:personal, middle_name: 'a' * 21)
    expect(personal).not_to be_valid
  end

  it "last name should be present" do
    personal = build(:personal, last_name: '')
    expect(personal).not_to be_valid
  end

  it "last name should not be too long" do
    personal = build(:personal, last_name: 'a' * 21)
    expect(personal).not_to be_valid
  end

  it "date of birth should be present" do
    personal = build(:personal, date_of_birth: "")
    expect(personal).not_to be_valid
  end

  it "mothers name should be present" do
    personal = build(:personal, mothers_name: '')
    expect(personal).not_to be_valid
  end

  it "mothers name should not be too long" do
    personal = build(:personal, mothers_name: 'a' * 51)
    expect(personal).not_to be_valid
  end

  it "fathers name should be present" do
    personal = build(:personal, fathers_name: '')
    expect(personal).not_to be_valid
  end

  it "fathers name should not be too long" do
    personal = build(:personal, fathers_name: 'a' * 51)
    expect(personal).not_to be_valid
  end

  it "caste should be present" do
    personal = build(:personal, caste: '')
    expect(personal).not_to be_valid
  end

  it "should not accept invalid castes" do
    invalid_caste = %w(abcd random 123 awee45)
    invalid_caste.each do |ic|
      personal = build(:personal, caste: ic)
      expect(personal).not_to be_valid , "Invalid caste"
    end
  end
end
