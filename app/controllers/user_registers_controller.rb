class UserRegistersController < ApplicationController
  def new
    @user_register = UserRegister.new
  end

  def create
    @user_register = UserRegister.new(user_register_params)
    if @user_register.save
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def update
  end

  def delete
  end
  private
  def user_register_params
    params.require(:user_register).permit(:first_name, :last_name, :birthday, :gender, :email, :phone_number, :subject)
  end
end
