# Question?
 1. when I launched the server for the first time, I saw some database commands getting run. What is this?
> (0.2ms)  CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY)
> 
> (0.1ms)  CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL)
> 
> ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC


 2. when I launched the server a second time, I did not see any database log messages. However, when I opened the default page `http://127.0.0.1:3000` I did see more database stuff I did not understand. Something about checking the version? Here is what got logged: 

> Started GET "/" for 127.0.0.1 at 2023-12-16 16:37:17 -0600
  ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC


 3. In the video on Navbar and Partials, we cut & pasted some code from Bootstrap. See `app/views/shared/_navbar.html.erb.`

    The snippet has a <button> element with a class attribute of `navbar-toggler`. What is this? Nobody has explained it... 

    Looking at the Bootstrap documentation, I found this section about [toggler](https://getbootstrap.com/docs/5.3/components/navbar/#toggler).     However, I didn't understand what it said, or see anything useful in the examples...

    Silly goose, if you resize the page, you see the Navbar menu items become a hamburger menu... The menu is then a `<button>` to see the navigation options...
