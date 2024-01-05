class CreateUsers < ActiveRecord::Migration[7.1]

  # Reversible migrations are migrations that know how 
  # to go +down+ for you. You simply supply the +up+ logic, 
  # and the Migration system figures out how to execute the 
  # down commands for you.
  # 
  # To define a reversible migration, define the +change+ method
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
