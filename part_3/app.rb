require 'active_record'
require 'mysql2'
require 'logger'
require './book'

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

p Book.first
p Book.first.title
p Book.where(title: ['input'])