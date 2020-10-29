require 'spec_helper'

describe Pet do
  it 'is valid with valid atributtes' do
    pet = FactoryBot.build(:pet)
    expect(pet).to be_valid
  end

  it 'is not valid without name' do
    pet = FactoryBot.build(:pet, name: nil)
    expect(pet).to_not be_valid
  end

  it 'is not valid without breed' do
    pet = FactoryBot.build(:pet, breed: nil)
    expect(pet).to_not be_valid
  end

  it 'is not valid without gender' do
    pet = FactoryBot.build(:pet, gender: nil)
    expect(pet).to_not be_valid
  end

  it 'is not valid without description' do
    pet = FactoryBot.build(:pet, description: nil)
    expect(pet).to_not be_valid
  end

  it 'is not valid without avatar' do
    pet = FactoryBot.build(:pet, avatar: nil)
    expect(pet).to_not be_valid
  end
end
