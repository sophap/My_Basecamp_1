class UsersController < ApplicationController
def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :admin)
  end
end