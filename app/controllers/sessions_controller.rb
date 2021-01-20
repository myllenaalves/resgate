require 'open-uri'

class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(name: auth_hash['name'], email: auth_hash['email'])
    download = open(auth_hash['image'])
    @user.file.attach(io: download, filename: 'image')
    current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']['info']
  end
end
