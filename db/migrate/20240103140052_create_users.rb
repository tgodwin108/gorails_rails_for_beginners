class CreateUsers < ActiveRecord::Migration[7.1]

  # Normally you define two methods in a migration. These are
  # the +up+ method and the +down+ method. With these two methods
  # you can "migrate" the DB to any configuration / version.
  
  # There are also "Reversible Migrations" which are migrations
  # that only define a +change+ method. The +change+ method
  # contains the commands you would have put in the +up+ method.
  # With a "Reversable Migration" the system figures out how to 
  # execute the +down+ commands for you.

  # after changes in Part 12, we learned the following commands:
  #     1) rails db:rollback      - run +down+ from latest migration
  #     2) rails db:migrate       - run +up+ from latest migration
  #     3) rails db:migrate:redo  - combine the two commands into one
  # for more info, here is the documentation: https://guides.rubyonrails.org/active_record_migrations.html#running-migrations

  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
