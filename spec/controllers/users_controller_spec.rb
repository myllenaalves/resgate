require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  describe 'update schedule', type: :controller do
    let(:user) { FactoryBot.create(:user) }

    it "update a User" do
      put :update, :params => {"name"=>"oi", "email"=>"oie@gmail.com"}
      expect(response).to have_http_status(:no_content)
    end
  end

  describe 'destroy schedule', type: :controller do
    it "destroy a User" do
      delete '/users/1'
      expect(response).to have_http_status(:no_content)
    end
  end
end
