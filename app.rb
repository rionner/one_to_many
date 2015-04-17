require 'bundler'
Bundler.require()


# Connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'cats'
)


# Models
require './models/kitten'
require './models/mama_cat'


# Routes
get '/' do
  'this is fur da cats'
end
