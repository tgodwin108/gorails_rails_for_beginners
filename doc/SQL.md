# SQL Database

Here is a place for me to document learning the Rails database. I began this application using the default database, [SQLite](https://sqlite.org/index.html).

So far, I have seen the following ways to interact with the Rails database. 
  1. Using `rails generate` to create a model
  1. Using `rails console` to manipulate the database using the Model objects
  1. Connecting to the database using a SQL Command Line Interface.

## Launch the CLI
There are two ways to launch the database CLI. These are:
  1. Using the native CLI utility for the database. This will be different depending on the database you have configured in the Rails application
  1. Using `rails dbconsole`[^1] to launch a CLI. This "starts a console for the database specified in config/database.yml (short-cut alias: "db")" 

### SQLite native CLI
SQLite database with the [SQLite CLI](https://sqlite.org/cli.html)
   1. `which sqlite3` - do I have the binary
   1. `cd storage` - this is where SQLite db files are located
   1. `sqlite3 development.sqlite3` - launch the CLI

### Rails DB Console
   1. `rails db` - connect to the configured db for the current environment (BOOM DONE)


Using `rails dbconsole` (or `rails db` as a short-cut) makes the most sense are it should work for all possible databases.




[^1]: The `rails` command has lots of database specific features. They have the format `rails db:<command>` and include database creation and migration. See `rails --help` for a list of all commands, including those which are database specific.