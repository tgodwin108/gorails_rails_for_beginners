# move this to my mac-mini
- setup .ssh
- add public key to remote repo
- git clone remote-repo local-name
   - `git clone git@github.com:tgodwin108/gorails_railsv6.git gorails`
- update local repo with correct username/email for remore repo
   - `git config --local user.email 'tgodwin108@yahoo.com'`

# install Ruby
- I use RVM, so I just ran the 'rvm install' command
   - `rvm install 3.2.2`
   - `rvm use 3.2.2 --default`
- version check
  - `gem --version` => 3.4.10
  - `bundler --version` => Bundler version 2.4.10
- update
  - `gem update --system`
- 2nd version check
  - `gem --version` => 3.4.21
  - `bundler --version` => Bundler version 2.4.21

# install rails
- The class is using 7.1.1, however, I will let Ruby install the latest version of rails
   - `gem install rails`
   - `which rails` => /Users/tgodwin/.rvm/gems/ruby-3.2.2/bin/rails
   - `rails --version` => Rails 7.1.1

# database decision
- KISS - just use SQL-LITE, which seems to be on my mac. Did I do this previously with homebrew?
   - `which sqlite3` => /usr/bin/sqlite3
   - `sqlite3 --version` => 3.39.5 2022-10-14 20:58:05 554764a6e721fab307c63a4f98cd958c8428a5d9d8edfde951858d6fd02daapl