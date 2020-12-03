ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
    set :database, 'sqlite3:db/database.db'
  end #This sets up a connection to a sqlite3 database named "database.db", located in a folder called "db." 
  #If we wanted to change our .db file to be called dogs.db we simgple change the name of this file
# rake helps create these files
require './app'