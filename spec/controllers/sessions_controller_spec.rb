require 'spec_helper'

RSpec.describe SessionsController, type: :controller do
  it "authenticate a User" do
    get :create, :params => {"state"=>"acc687a3136c1f8185ff0bc3d4a4ced6841b67e760fcbf4a", "code"=>"4/0AY0e-g68aig7L52i6ErepXuOyBcK8Z8ChqAVpuoBMoz-4JB-TDp-Hz2NuvWebYdMM3fbzw", "scope"=>"email profile https://www.googleapis.com/auth/contacts openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile", "authuser"=>"0", "prompt"=>"consent"}

    expect(response).to have_http_status(:ok)
  end
end
