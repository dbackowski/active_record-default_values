$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_record/default_values'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3',
                                        database: File.dirname(__FILE__) + '/active_record-default_values.sqlite3')

load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'
