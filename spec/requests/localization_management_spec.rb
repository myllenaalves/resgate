require "spec_helper"

RSpec.describe "Localization management", :type => :request do

  it "creates a Localization" do
    headers = { "ACCEPT" => "application/json" }
    post "/localizations", :params => { :widget => {:name => "My Widget"} }, :headers => headers

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end

end
