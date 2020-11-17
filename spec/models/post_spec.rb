require 'spec_helper'

describe Post, type: :model do
  describe 'validations' do
   it { should validate_presence_of(:title) }
   it { should validate_presence_of(:description) }
   it { should validate_presence_of(:photo) }
   it { should belong_to(:user) }
  end
end
