class CreateUsers < ActiveRecord::Migration[7.1]

  # Normally you define two methods in a migration. These are
  # the +up+ method and the +down+ method. With these two methods
  # you can "migrate" the DB to any configuration / version.
  
  # There are also "Reversible Migrations" which are migrations
  # that only define a +change+ method. The +change+ method
  # contains the commands you would have put in the +up+ method.
  # With a "Reversable Migration" the system figures out how to 
  # execute the +down+ commands for you.

  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
