class UserRegistersController < ApplicationController
  def index 
    @user_registers = UserRegister.all
    @user_register = UserRegister.new  
  end
  def new
    @user_register = UserRegister.new
    @subjects = [
      ['Choose option', "", {disabled: true, selected: true}],
      ["Scrum", "Scrum"],
      ["Ruby on Rails", "Ruby on Rails"],
      ["TDD", "TDD"],
      ["CSS", "CSS"],
      ["Storytelling", "Storytelling"],
    ]
  end

  def create
    @user_register = UserRegister.new(user_register_params)
    if @user_register.save
      redirect_to user_registers_path, notice: 'User was successfully created.'
    else
    @subjects = [
      ['Choose option', "", {disabled: true, selected: true}],
      ["Scrum", "Scrum"],
      ["Ruby on Rails", "Ruby on Rails"],
      ["TDD", "TDD"],
      ["CSS", "CSS"],
      ["Storytelling", "Storytelling"],
    ]
      render :new, status: :unprocessable_entity
    end
  end

def confirm_delete
  @user_register = UserRegister.find(params[:id])
  render partial: 'modal/confirm_delete', locals: { user_register: @user_register }
end

def destroy
    @user_register = UserRegister.find(params[:id])
    @user_register.destroy
    respond_to do |format|
      format.html { redirect_to user_registers_path, notice: 'User was successfully deleted.' }
    end
end
  private
  def user_register_params
    params.require(:user_register).permit(:first_name, :last_name, :birthday, :gender, :email, :phone_number, :subject)
  end
end
