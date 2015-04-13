require 'rails_helper'

RSpec.describe Personal, type: :model do
  it "personal should be valid" do
    personal = FactoryGirl.build(:personal)
    expect(personal).to be_valid
  end


  it "first name should be present" do
    personal = FactoryGirl.build(:personal, first_name: '')
    expect(personal).not_to be_valid
  end
end
