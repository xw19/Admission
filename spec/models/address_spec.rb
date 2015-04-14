require 'rails_helper'

RSpec.describe Address, type: :model do
  it "line1 should be present" do
    address = build(:address, line1: "")
    expect(address).not_to be_valid
  end

  it "line1 should be present" do
    address = build(:address, line1: "a" * 51)
    expect(address).not_to be_valid
  end

  it "line2 should be present" do
    address = build(:address, line2: "a" * 51)
    expect(address).not_to be_valid
  end

  it "city_village should be present" do
    address = build(:address, city_village: "")
    expect(address).not_to be_valid
  end

  it "city_village should be present" do
    address = build(:address, city_village: "a" * 51)
    expect(address).not_to be_valid
  end

  it "district should be present" do
    address = build(:address, district: "")
    expect(address).not_to be_valid
  end

  it "district should be present" do
    address = build(:address, district: "a" * 51)
    expect(address).not_to be_valid
  end

  it "state should be present" do
    address = build(:address, state: "")
    expect(address).not_to be_valid
  end

  it "state should be present" do
    address = build(:address, state: "a" * 51)
    expect(address).not_to be_valid
  end

  it "country should be present" do
    address = build(:address, country: "")
    expect(address).not_to be_valid
  end

  it "country should be present" do
    address = build(:address, country: "a" * 51)
    expect(address).not_to be_valid
  end
end
