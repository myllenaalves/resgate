require 'spec_helper'

describe Post do
  it 'is valid with valid atributtes' do
    post = FactoryBot.build(:post)
    expect(post).to be_valid
  end

  it 'is not valid without description' do
    post = FactoryBot.build(:post, description: nil)
    expect(post).to_not be_valid
  end

  it 'is not valid without photo' do
    post = FactoryBot.build(:post, photo: nil)
    expect(post).to_not be_valid
  end

  it 'is not valid without title' do
    post = FactoryBot.build(:post, title: nil)
    expect(post).to_not be_valid
  end
end
