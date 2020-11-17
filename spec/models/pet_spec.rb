require 'spec_helper'

describe Pet, type: :model do
  describe 'validations' do
   it { should validate_presence_of(:name) }
   it { should validate_presence_of(:breed) }
   it { should validate_presence_of(:gender) }
   it { should validate_presence_of(:description) }
   it { should validate_presence_of(:avatar) }
   it { should belong_to(:user) }
  end
end
