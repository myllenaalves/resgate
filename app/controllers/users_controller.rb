class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user, status: :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: @user, status: :no_content
    end
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :password, :phone, :avatar)
   end
end
