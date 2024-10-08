class CreateUserRegisters < ActiveRecord::Migration[7.1]
  def change
    create_table :user_registers do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :gender
      t.string :email
      t.integer :phone_number
      t.string :subject

      t.timestamps
    end
  end
end
