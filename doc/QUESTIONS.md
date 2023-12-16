# Question?
- when I launched the server for the first time, I saw some database commands getting run. What is this?

`
(0.2ms)  CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY)
`

`
(0.1ms)  CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)
`

`
ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
`

- when I launched the server a second time, I did not see any database log messages. However, when I opened the default page `http://127.0.0.1:3000` I did see more database stuff I did not understand. Something about checking the version? Here is what got logged: 

`
Started GET "/" for 127.0.0.1 at 2023-12-16 16:37:17 -0600
  ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
`