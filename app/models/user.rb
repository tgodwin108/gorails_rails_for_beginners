=begin
# created this model with:
   rail generate model User email:string password_digest:string

# adding the 'has_secure_password' added some 'virtual' attributes
   password:string (virtual)
   password_confirmation:string (virtual)

# We never interact with the 'password_digest' - we only interact with the 
# virtual 'password' and 'password_confirmation' fields of this model

# verified I can not create a user if the 'password' and 'password_confirmation'
# don't match. An Object gets created, but nothing is inserted into the DB
    3.2.2 :007 > u = User.create({email: "chris@gorails.com", password: 'password', password_confirmation: 'Password0'})
    => #<User:0x000000010a161060 id: nil, email: "chris@gorails.com", password_digest: "[FILTERED]", created_at: nil, updated_at: nil> 

    3.2.2 :009 > puts u.inspect
    #<User id: nil, email: "chris@gorails.com", password_digest: [FILTERED], created_at: nil, updated_at: nil>
    => nil 
 
    3.2.2 :014 > User.first
    User Load (0.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
    => nil 

# So if the password and confirmation match you get an object and a DB record
    3.2.2 :015 > u = User.create({email: "chris@gorails.com", password: 'password', password_confirmation: 'password'})
    TRANSACTION (0.1ms)  begin transaction
    User Create (3.0ms)  INSERT INTO "users" ("email", "password_digest", "created_at", "updated_at") VALUES (?, ?, ?, ?) RETURNING "id"  [["email", "chris@gorails.com"], ["password_digest", "[FILTERED]"], ["created_at", "2024-01-05 19:59:19.999434"], ["updated_at", "2024-01-05 19:59:19.999434"]]
    TRANSACTION (0.1ms)  commit transaction
    => 

    3.2.2 :016 > puts u.inspect
    #<User id: 1, email: "chris@gorails.com", password_digest: [FILTERED], created_at: "2024-01-05 19:59:19.999434000 +0000", updated_at: "2024-01-05 19:59:19.999434000 +0000">
    => nil 

    3.2.2 :017 > User.first
    User Load (0.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
    => 
    #<User:0x000000010a2c9240
    id: 1,
    email: "chris@gorails.com",
    password_digest: "[FILTERED]",
    created_at: Fri, 05 Jan 2024 19:59:19.999434000 UTC +00:00,
    updated_at: Fri, 05 Jan 2024 19:59:19.999434000 UTC +00:00> 
=end

class User < ApplicationRecord
    has_secure_password

    # 1) RegEx given in the video is too simple
    # 2) constant given in video comments is too lax (URI::MailTo::EMAIL_REGEXP)
    # 3) Stack overflow to the rescue - This is GOOD ENOUGH - https://stackoverflow.com/a/48409395
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX, message: 'invalid email format'}
end
