require "spec_helper"

RSpec.describe "User management", :type => :request do

  it "creates and find a User" do
    get '/auth/google_oauth2'
    expect(response).to have_http_status(:found)
  end

end
