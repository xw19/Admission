require 'rails_helper'

RSpec.describe Personal, type: :model do

  it "first name should be present" do
    personal = FactoryGirl.build(:personal, first_name: '')
    expect(personal).not_to be_valid
  end

  it "first name should not be too long" do
    personal = FactoryGirl.build(:personal, first_name: 'a' * 21)
    expect(personal).not_to be_valid
  end

  it "middle name should not be too long" do
    personal = FactoryGirl.build(:personal, middle_name: 'a' * 21)
    expect(personal).not_to be_valid
  end
end
