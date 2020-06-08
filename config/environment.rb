require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
)

require_all 'app'








# require "bundler/setup"
# Bundler.require
# require "sinatra/activerecord"
# require "sinatra"
# # require "activerecord"
# require "ostruct"
# require "date"
# require 'require_all'
# require_all 'app/models'

# ENV["SINATRA_ENV"] ||= 'development'
# ActiveRecord::Base.establish_connection(ENV["SINATRA_ENV"].to_sym)
