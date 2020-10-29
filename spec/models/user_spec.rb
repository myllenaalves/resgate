require 'spec_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes", type: :model do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it 'is not valid without name' do
    user = FactoryBot.build(:user, name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without email' do
    user = FactoryBot.build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without password' do
    user = FactoryBot.build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without phone' do
    user = FactoryBot.build(:user, phone: nil)
    expect(user).to_not be_valid
  end

  it "should have many pets" do
   t = User.reflect_on_association(:pets)
   expect(t.macro).to eq(:has_many)
  end

  it "should have many posts" do
   t = User.reflect_on_association(:posts)
   expect(t.macro).to eq(:has_many)
  end
end
