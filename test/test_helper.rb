# Allow test to be run in-place without requiring a gem install
$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require 'minitest/autorun'
require 'net/tcp_client'

SemanticLogger.default_level = :trace
SemanticLogger.add_appender(file_name: 'test.log', formatter: :color)
