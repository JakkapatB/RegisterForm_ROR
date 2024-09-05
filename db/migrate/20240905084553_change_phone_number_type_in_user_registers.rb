class ChangePhoneNumberTypeInUserRegisters < ActiveRecord::Migration[7.1]
  def change
    change_column :user_registers, :phone_number, :string
  end
end
