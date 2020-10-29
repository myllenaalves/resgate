require 'spec_helper'

describe Localization do
  it 'is valid with valid atributtes' do
    localization = FactoryBot.build(:localization)
    expect(localization).to be_valid
  end

  it 'is not valid without latitude' do
    localization = FactoryBot.build(:localization, latitude: nil)
    expect(localization).to_not be_valid
  end

  it 'is not valid without longitude' do
    localization = FactoryBot.build(:localization, longitude: nil)
    expect(localization).to_not be_valid
  end
end
