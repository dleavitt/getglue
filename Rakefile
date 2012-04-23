#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

desc "Run pry in context of gem"
task :console do
  sh "pry -rubygems -I lib -r getglue"
end

# require 'yard'
# namespace :doc do
#   YARD::Rake::YardocTask.new do |task|
#     task.files   = ['LICENSE.md', 'lib/**/*.rb']
#     task.options = ['--markup', 'markdown']
#   end
# end
