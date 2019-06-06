# frozen_string_literal: true

require 'rerun'
require_relative 'lib/stub'
require 'rspec/core/rake_task'

task :start do
  Stub.run!
end

RSpec::Core::RakeTask.new(:spec)

task :spec
