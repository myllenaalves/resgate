require "rails_helper"

RSpec.describe "Pet management", :type => :request do

  it "creates a Pet" do
    headers = { "ACCEPT" => "application/json" }
    post "/widgets", :params => { :widget => {:name => "My Widget"} }, :headers => headers

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end

end
