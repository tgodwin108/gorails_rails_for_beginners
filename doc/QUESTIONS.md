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
