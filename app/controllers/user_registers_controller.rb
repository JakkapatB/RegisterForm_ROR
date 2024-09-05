class UserRegistersController < ApplicationController
  def index 
    @user_registers = UserRegister.all
  end
  def new
    @user_register = UserRegister.new
    @subjects = [
      ['Choose option', "", {disabled: true, selected: true}],
      ["Mathematics", "math"],
      ["Science", "science"],
      ["History", "history"],
      ["English", "english"],
      ["Art", "art"],
      ["Computer Science", "cs"]
    ]
  end

  def create
    @user_register = UserRegister.new(user_register_params)
    if @user_register.save
      redirect_to user_registers_path, notice: 'User was successfully created.'
    else
      @subjects = [
      ['Choose option', "", {disabled: true, selected: true}],
      ["Mathematics", "math"],
      ["Science", "science"],
      ["History", "history"],
      ["English", "english"],
      ["Art", "art"],
      ["Computer Science", "cs"]
    ]
      render :new
    end
  end

  def destroy
    @user_register = UserRegister.find(params[:id])
    @user_register.destroy
    redirect_to user_registers_path, notice: 'User was successfully destroyed.'
  end
  private
  def user_register_params
    params.require(:user_register).permit(:first_name, :last_name, :birthday, :gender, :email, :phone_number, :subject)
  end
end
