require 'spec_helper'

describe Localization, type: :model do
  describe 'validations' do
   it { should validate_presence_of(:latitude) }
   it { should validate_presence_of(:latitude) }
  end
end
